import 'dart:io';

class Task {
  String description;
  String dueDate;
  bool isCompleted;

  Task(this.description, this.dueDate, [this.isCompleted = false]);

  void toggleStatus() {
    isCompleted = !isCompleted;
  }
}

List<Task> toDoList = [];

void addTask(String description, String dueDate) {
  toDoList.add(Task(description, dueDate));
}

void removeTask(int index) {
  if (index >= 0 && index < toDoList.length) {
    toDoList.removeAt(index);
  }
}

void updateTaskStatus(int index) {
  if (index >= 0 && index < toDoList.length) {
    toDoList[index].toggleStatus();
  }
}

void showTasks() {
  if (toDoList.isEmpty) {
    print('No tasks.');
  } else {
    for (int i = 0; i < toDoList.length; i++) {
      final task = toDoList[i];
      print(
          '$i: ${task.description} (Due: ${task.dueDate}) - Completed: ${task.isCompleted}');
    }
  }
}

void main() {
  while (true) {
    print('\nChoose: add, remove, update, show, exit');
    String? choice = stdin.readLineSync();

    if (choice == 'add') {
      print('Enter task description:');
      String? desc = stdin.readLineSync();
      print('Enter due date:');
      String? date = stdin.readLineSync();
      if (desc != null && date != null) {
        addTask(desc, date);
      }
    } else if (choice == 'remove') {
      print('Enter task index to remove:');
      int index = int.parse(stdin.readLineSync()!);
      removeTask(index);
    } else if (choice == 'update') {
      print('Enter task index to toggle status:');
      int index = int.parse(stdin.readLineSync()!);
      updateTaskStatus(index);
    } else if (choice == 'show') {
      showTasks();
    } else if (choice == 'exit') {
      break;
    }
  }
}
