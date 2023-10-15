import 'dart:io';

void main () {
  List<String> groceryList = [];

  while (true) {
    print("\Menu. Press The Following Numbers To Activate Function.");
    print('1. Add Item To Your Grocery List');
    print('2. View Your Grocery List');
    print('3. Exit');

    stdout.write("Enter Your Choices From 1 To 3.");
    String choice = stdin.readLineSync() ?? '';

    switch (choice) {
      case '1':
        addItemToList(groceryList);
        break;
      case '2':
        viewGroceryList(groceryList);
        break;
      case '3':
        exit(0);
        break;
      default:
        print('Invalid Choice. Please Try Again');
    }
  }
}

void addItemToList(List<String> list) {
  stdout.write('Please Enter The Item You Wish To Add: ');
  String item = stdin.readLineSync() ?? '';
  list.add(item);
  print('$item Added To The Grocery List');
}

void viewGroceryList(List<String> list) {
  if (list.isEmpty) {
    print('Grocery List Is Empty');
  } else {
    print('Grocery List:');
    for (int i = 0; i < list.length; i++) {
      print('${i + i}. ${list[i]}');
    }
  }
}