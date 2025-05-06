import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/taskitem.dart';
import 'package:tasks_app/widgets/textfield_section.dart';
import 'package:tasks_app/models/task_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TaskManager taskManager = TaskManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 45, 203, 231),
        title: const Text('My Tasks'),
      ),
      body: Column(
        children: [
          Expanded(
            child: taskManager.tasks.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.check_circle_outline,
                            size: 80,
                            color: Color.fromARGB(255, 181, 218, 224)),
                        SizedBox(height: 16),
                        Text(
                          'No tasks Yet',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 84, 86, 87),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Add a task to get started',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 137, 139, 139),
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: taskManager.tasks.length,
                    itemBuilder: (context, index) {
                      final task = taskManager.tasks[index];
                      return TaskItem(
                        taskManager: taskManager,
                        task: task,
                        onDeleteTask: () {
                          setState(() {
                            taskManager.deleteTask(index);
                          });
                        },
                        onToggleComplete: () {
                          setState(() {
                            taskManager.toggleTaskCompletion(index);
                          });
                        },
                      );
                    },
                  ),
          ),
          TextfieldSection(
            taskManager: taskManager,
            onTaskAdded: () {
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
