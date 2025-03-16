// Create a to-do list program using a List where each item has a description, due date, and
// completion status (as bool). Implement methods to add, remove, and update tasks, including the
//Use of for-each loops

import 'dart:io';

void main() {
  List<Map<String, dynamic>> tasks = [];
  while (true) {
    stdout.write("Enter task (or exit) :");
    String task = stdin.readLineSync()?.toLowerCase() ?? " ";
    if (task == "exit") {
      print('Exit');
      break;
    }
    stdout.write("Choose action: add, remove, update, display:");
    String action = stdin.readLineSync()!.toLowerCase();
    if (action == "add") {
      stdout.write("Enter  date (YYYY-MM-DD) :");
      String Date = stdin.readLineSync()!.toLowerCase();
      stdout.write("Enter status (true/false) :");
      bool status = bool.parse(stdin.readLineSync()!.toLowerCase());
      addTask(tasks, task, Date, status);
    } else if (action == "remove") {
      removeTask(tasks, task);
    } else if (action == 'update') {
      stdout.write("Enter new date (YYYY-MM-DD) :");
      String newDate = stdin.readLineSync()!.toLowerCase();
      stdout.write("Enter new status (true/false) :");
      bool newstatus = bool.parse(stdin.readLineSync()!.toLowerCase());
      updateTask(tasks, task, newDate, newstatus);
    } else if (action == 'display') {
      displayTasks(tasks);
    } else {
      print("Invalid action. Please enter add, remove, update, or display.");
    }
  }
}

void addTask(
    List<Map<String, dynamic>> list, String task, String date, bool status) {
  list.add({
    'description': task,
    'dueDate': DateTime.parse(date),
    'completed': status
  });
  print('Task added successfully');
}

void removeTask(List<Map<String, dynamic>> list, String task) {
  if (task.isEmpty) {
    print('Task not found');
    return;
  }
  bool found = list.any((item) => item['description'] == task);

  if (found) {
    list.removeWhere((item) => item['description'] == task);
    print('Task removed successfully!');
  } else {
    print('Task not found in the list.');
  }
}

void updateTask(List<Map<String, dynamic>> list, String task, String newdate,
    bool newstatus) {
  for (var element in list) {
    if (element['description'] == task.toLowerCase()) {
      element['dueDate'] = DateTime.parse(newdate);
      element['completed'] = newstatus;
      print('Task updated successfully');
      return;
    } else {
      print('Task not found');
    }
  }
}

void displayTasks(List<Map<String, dynamic>> list) {
  if (list.isEmpty) {
    print('No tasks found');
    return;
  } else {
    list.forEach((task) {
      print(
          'Task: ${task['description']}, Due Date: ${task['dueDate']}, Completed: ${task['completed'] ? 'Yes' : 'No'}');
    });
  }
}
