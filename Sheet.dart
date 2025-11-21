import 'dart:io';

double percentage(int obtained, int total) {
  return obtained / total * 100;
}

void main() {
  int totalmarks = 500;
  int sum = 0;
  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter marks obtained for subject $i ");
    int marks = int.parse(stdin.readLineSync()!);
    sum += marks;
  }
  double percent = percentage(sum, totalmarks);
  print("Total Obtained Marks : $sum");
  print("Percentage : ${percent.toStringAsFixed(2)}%");
  String grade;
  if (percent >= 80) {
    grade = "A+";
  } else if (percent >= 70) {
    grade = "A";
  } else if (percent >= 60) {
    grade = "B";
  } else if (percent >= 50) {
    grade = "C";
  } else if (percent >= 40) {
    grade = "D";
  } else {
    grade = "Fail";
  }
  print("Grade : $grade");
}
