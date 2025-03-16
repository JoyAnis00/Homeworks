// Implement a program that uses a List to store grocery items. It should allow adding, removing, and
//displaying items. Use functions with return types and optional/named parameters. Make sure to
//handle possible null values
import 'dart:io';

void main() {
  var grocery = ["ORANGE", "BANANA", "APPLE", "PALETTE", "RICE"];
  while (true) {
    stdout.write("Enter an item name (or write exit ) : ");
    String item = (stdin.readLineSync() ?? "").toLowerCase();
    if (item == "exit") {
      print("This program is exiting.");
      break;
    }
    stdout.write("Do you want to add, remove, or display items? : ");
    String input = (stdin.readLineSync() ?? "").toLowerCase();
    if (input == "add") {
      addItem(grocery, item: item);
    } else if (input == "remove") {
      removeItem(grocery, item: item);
    } else if (input == "display") {
      displayItems(grocery);
    } else {
      print("Invalid option. Please enter add, remove, or display.");
    }
  }
}

void addItem(List<String> list, {String? item}) {
  if (item == null) {
    print("No item provided to add.");

    return;
  }
  list.add(item.toUpperCase());
  print("$item added successfully!");
}

void removeItem(List<String> list, {String? item}) {
  if (item == null) {
    print("No item provided to remove.");
    return;
  }
  if (list.contains(item.toUpperCase())) {
    list.remove(item.toUpperCase());
    print("$item removed successfully!");
  }
}

void displayItems(List<String> list) {
  print("Current items:");
  list.forEach(
    (element) {
      print(element);
    },
  );
}
