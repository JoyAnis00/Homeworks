import 'package:flutter/material.dart';
import 'package:tasks_app/models/task_model.dart';
import 'package:intl/intl.dart';


class TaskItem extends StatelessWidget {
  final Task task; // Assuming you have a Task model
  final TaskManager taskManager;
  final VoidCallback onToggleComplete;
  final VoidCallback onDeleteTask;
  const TaskItem({
    super.key,
    required this.task,
    required this.taskManager,
    required this.onToggleComplete,
    required this.onDeleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color:Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 114, 145, 150),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],

      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Checkbox(
            activeColor: const Color.fromARGB(255, 45, 203, 231),
            value: task.isDone,
            onChanged: (value) {
              onToggleComplete();
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.title,
                style:  TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color:Color.fromARGB(255, 137, 139, 139),
                    decoration: task.isDone
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
              Text(
                 DateFormat('MMM d, yyyy – h:mm a').format(task.createdAt),
                style:  TextStyle(fontSize: 14,
                    color: Color.fromARGB(255, 137, 139, 139),
                    decoration: task.isDone
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              onDeleteTask();
            },
            icon: const Icon(Icons.delete_outline ,
                color: Color.fromARGB(255, 255, 0, 0)),
          ),
        ],
      ),
    );
  }
}
