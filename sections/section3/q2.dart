import 'dart:io';

List<String> groceryList = [];

void addItem(String item) {
  groceryList.add(item);
}

bool removeItem(String item) {
  return groceryList.remove(item);
}

void showItems() {
  if (groceryList.isEmpty) {
    print('The grocery list is empty.');
  } else {
    print('Grocery List:');
    groceryList.forEach((item) => print('- $item'));
  }
}

void main() {
  while (true) {
    print('\nChoose an option: add, remove, show, exit');
    String? choice = stdin.readLineSync();
    
    if (choice == 'add') {
      print('Enter item to add:');
      String? item = stdin.readLineSync();
      if (item != null && item.isNotEmpty) {
        addItem(item);
        print('$item added.');
      }
    } else if (choice == 'remove') {
      print('Enter item to remove:');
      String? item = stdin.readLineSync();
      if (item != null && item.isNotEmpty) {
        if (removeItem(item)) {
          print('$item removed.');
        } else {
          print('$item not found.');
        }
      }
    } else if (choice == 'show') {
      showItems();
    } else if (choice == 'exit') {
      print('Exiting...');
      break;
    } else {
      print('Invalid choice.');
    }
  }
}
