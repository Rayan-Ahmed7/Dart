import 'dart:io';

void main() {
  List<String> menu = ['Burger', 'Pizza', 'Pasta', 'Fries', 'Coke'];
  List<String> order = [];

  while (true) {
    print('\n FOOD ORDER SYSTEM');
    print('1. View Menu');
    print('2. Add Food to Order');
    print('3. View My Order');
    print('4. Remove Food from Order');
    print('5. Exit');
    stdout.write('Enter your choice: ');
    String? turn = stdin.readLineSync();

    switch (turn) {
      case '1':
        print('\nAvailable Menu Items:');

        int number = 1;
        for (var item in menu) {
          print('$number. $item');
          number++;
        }

        break;
      case '2':
        print('\nSelect a food item:');

        int number = 1;
        for (var item in menu) {
          print('$number. $item');
          number++;
        }
        stdout.write('Enter item number: ');
        var input = stdin.readLineSync();

        var num = int.tryParse(input ?? '');

        if (num != null && num > 0 && num <= menu.length) {
          var item = menu[num - 1];
          order.add(item);
          print(" '$item' added to your order!");
        } else {
          print('Invalid selection.');
        }

        break;

      case '3':
        print('\nYour Current Order:');

        if (order.isEmpty) {
          print('No items in your order.');
        } else {
          int num = 1;
          for (var item in order) {
            print('$num. $item');
            num++;
          }
        }

        break;

      case '4':
        if (order.isEmpty) {
          print('\nNo items to remove.');
        } else {
          print('\nSelect a food item to remove:');

          for (var i = 0; i < order.length; i++) {
            print('${i + 1}. ${order[i]}');
          }

          stdout.write('Enter number: ');
          var input = stdin.readLineSync();

          var num = int.tryParse(input ?? '');

          if (num != null && num > 0 && num <= order.length) {
            var removed = order.removeAt(num - 1);
            print(" '$removed' removed from your order.");
          } else {
            print('Invalid selection.');
          }
        }

        break;

      case '5':
        print(' Exiting Food Order, Enjoy your meal!');
        return;

      default:
        print(' Invalid choice. Please try again.');
    }
  }
}
