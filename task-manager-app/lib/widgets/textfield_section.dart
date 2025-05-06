import 'package:flutter/material.dart';
import 'package:tasks_app/models/task_model.dart';

class TextfieldSection extends StatefulWidget {
  final TaskManager taskManager;
  final VoidCallback onTaskAdded; // Callback to notify when a task is added
  const TextfieldSection(
      {super.key,
      required this.taskManager,
      required this.onTaskAdded}); // Added onTaskAdded to constructor

  @override
  State<TextfieldSection> createState() => _TextfieldSectionState();
}

class _TextfieldSectionState extends State<TextfieldSection> {
  final TextEditingController controller = TextEditingController();
// Assuming you have a task manager

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Add a new task.....',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 13, 14, 14),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 152, 199, 206),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color:  const Color.fromARGB(255, 152, 199, 206),
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  widget.taskManager.addTask(
                      controller.text); // Add the task using the task manager
                  widget.onTaskAdded(); // Notify that a task has been added

                  // Notify that a task has been added
                  controller
                      .clear(); // Clear the text field after adding the task
                }
              },
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
