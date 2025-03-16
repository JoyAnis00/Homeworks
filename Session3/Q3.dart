// Create a to-do list program using a List where each item has a description, due date, and
// completion status (as bool). Implement methods to add, remove, and update tasks, including the
//Use of for-each loops

import 'dart:io';

void main() {
  List<Map<String, dynamic>> tasks = [];
  TaskOperations taskManager = TaskOperations();
  while (true) {
    stdout.write("Enter task (or exit): ");
    String task = stdin.readLineSync()?.trim().toLowerCase() ?? "";
    if (task == "exit") {
      print('Exiting...');
      break;
    }

    stdout.write("Choose action: add, remove, update, display: ");
    String action = stdin.readLineSync()?.trim().toLowerCase() ?? "";

    if (action == "add") {
      String dateInput;
      do {
        stdout.write("Enter due date (YYYY-MM-DD): ");
        dateInput = stdin.readLineSync()!.trim();
        if (!isValidDateFormat(dateInput)) {
          print("Invalid date format. Please enter in YYYY-MM-DD format.");
        }
      } while (!isValidDateFormat(dateInput));
      DateTime dueDate = DateTime.parse(dateInput);

      bool status = getBooleanInput("Enter status (true/false): ");

      taskManager.addTask(tasks, task, dueDate, status);
      
    } else if (action == "remove") {
      taskManager.removeTask(tasks, task);
      
    } else if (action == "update") {
      String newDateInput;
      do {
        stdout.write("Enter new due date (YYYY-MM-DD): ");
        newDateInput = stdin.readLineSync()!.trim();
        if (!isValidDateFormat(newDateInput)) {
          print("Invalid date format. Please enter in YYYY-MM-DD format.");
        }
      } while (!isValidDateFormat(newDateInput));
      DateTime newDate = DateTime.parse(newDateInput);

      bool newStatus = getBooleanInput("Enter new status (true/false): ");

      taskManager.updateTask(tasks, task, newDate, newStatus);
      
    } else if (action == "display") {
      taskManager.displayTasks(tasks);
      
    } else {
      print("Invalid action. Please enter add, remove, update, or display.");
    }
  }
}

bool isValidDateFormat(String input) {
  RegExp datePattern = RegExp(r'^\d{4}-\d{2}-\d{2}$');
  return datePattern.hasMatch(input);
}

bool getBooleanInput(String message) {
  String input;
  do {
    stdout.write(message);
    input = stdin.readLineSync()!.trim().toLowerCase();
    if (input != "true" && input != "false") {
      print("Invalid input. Please enter 'true' or 'false'.");
    }
  } while (input != "true" && input != "false");
  return input == "true";
}

class TaskOperations {
  void addTask(List<Map<String, dynamic>> list, String task, DateTime date, bool status) {
    list.add({
      'description': task,
      'dueDate': date,
      'completed': status
    });
    print('Task added successfully');
  }

  void removeTask(List<Map<String, dynamic>> list, String task) {
    bool found = list.any((item) => item['description'].toLowerCase() == task.toLowerCase());

    if (found) {
      list.removeWhere((item) => item['description'].toLowerCase() == task.toLowerCase());
      print('Task removed successfully!');
    } else {
      print('Task not found in the list.');
    }
  }

  void updateTask(List<Map<String, dynamic>> list, String task, DateTime newDate, bool newStatus) {
    bool found = false;

    for (var element in list) {
      if (element['description'].toLowerCase() == task.toLowerCase()) {
        element['dueDate'] = newDate;
        element['completed'] = newStatus;
        print('Task updated successfully');
        found = true;
        break;
      }
    }

    if (!found) {
      print('Task not found');
    }
  }

  void displayTasks(List<Map<String, dynamic>> list) {
    if (list.isEmpty) {
      print('No tasks found');
      return;
    }
    
    list.forEach((task) {
      print('Task: ${task['description']}, Due Date: ${task['dueDate']}, Completed: ${task['completed'] ? 'Yes' : 'No'}');
    });
  }
}
