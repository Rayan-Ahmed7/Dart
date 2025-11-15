import 'dart:io';

void main() {
  stdout.write("Enter a number to Find table: ");
  int number = int.parse(stdin.readLineSync()!);

  print("\nTable of $number:\n");
  for (int i = 1; i <= 10; i++) {
    print("$number x $i = ${number * i}");
  }
}
