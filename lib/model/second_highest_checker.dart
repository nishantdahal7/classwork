import 'dart:io';

void main() {
  List<int> numbers = [];

  print('Enter five integers:');
  for (int i = 0; i < 5; i++) {
    int input = int.parse(stdin.readLineSync()!);
    numbers.add(input);
  }

  numbers.sort();
  int secondHighest = numbers[numbers.length - 2];

  print('The second highest number is: $secondHighest');
}
