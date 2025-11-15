import 'dart:io';

void main() {
  stdout.write("Enter a number : ");
  int number = int.parse(stdin.readLineSync()!);

  if (number < 0) {
    print("\nError: Negative numbers are not allowed for factorial.");
    return;
  }

  int factorial = 1;

  for (int i = 1; i <= number; i++) {
    factorial *= i;
  }

  print("\nFactorial of $number is: $factorial");
}
