📝 Task Manager App
A simple Flutter app to manage daily tasks. It allows users to:

✅ Add new tasks with a title and auto-generated creation date

📋 View all tasks in a styled list

✔️ Mark tasks as complete/incomplete using a checkbox

❌ Delete tasks from the list

🕒 See task creation time in a clean formatted style

🧠 Uses a centralized TaskManager class to manage the task list (add, toggle, delete)

🔁 Real-time UI updates using setState() in the main HomePage

🧩 Project Structure

File	Purpose
models/task_model.dart	Contains the Task and TaskManager classes
widgets/task_item.dart	Custom widget for rendering a single task item
widgets/textfield_section.dart	TextField input with add button to insert new tasks
pages/home_page.dart	The main UI with task list and text input field
💡 Notes
The TaskManager object is created once in the HomePage and passed to child widgets for consistent state sharing.

UI is refreshed using setState() after every task change.

Dates are formatted using the intl package.

