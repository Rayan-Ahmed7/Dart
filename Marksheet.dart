import 'dart:io';

void main() {
  stdout.write("Enter your Name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter your English Number: ");
  int? eng = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your Urdu Number: ");
  int? urdu = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your Math Number: ");
  int? math = int.parse(stdin.readLineSync()!);

  int t = 300;
  int total = math + eng + urdu;
  double percent = (total / t) * 100;
  String grade;
  if (percent >= 80 && eng >= 33 && math >= 33 && urdu >= 33) {
    grade = "A+";
  } else if (percent >= 70 && eng >= 33 && math >= 33 && urdu >= 33) {
    grade = "A";
  } else if (percent >= 60 && eng >= 33 && math >= 33 && urdu >= 33) {
    grade = "B";
  } else if (percent >= 50 && eng >= 33 && math >= 33 && urdu >= 33) {
    grade = "C";
  } else if (percent >= 40 && eng >= 33 && math >= 33 && urdu >= 33) {
    grade = "D";
  } else {
    grade = "Fail";
  }
  print("======Marksheet=========");
  print("Name : $name");
  print("English Num : $eng");
  print("Math Num : $math");
  print("Urdu Num : $urdu");
  print("Total Marks : $total");
  print("Percentage : $percent");
  print("Grade : $grade");
}
