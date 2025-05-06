class Task {
  String title;
  bool isDone;
  DateTime createdAt;

  Task(
      {required this.title, this.isDone = false, required this.createdAt});
}
class TaskManager {
  List<Task> tasks = [];

  void addTask(String title) {
    Task newTask = Task(title: title, createdAt: DateTime.now());
    tasks.add(newTask);
  }

  void toggleTaskCompletion(int index) {
    tasks[index].isDone = !tasks[index].isDone;
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }

}