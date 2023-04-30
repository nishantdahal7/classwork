import 'dart:io';

void main() {
  List<int> numbers = [
    3,
    6,
    9,
    12,
    15,
    18,
    21,
    24,
    27,
    30
  ]; // Sample list of numbers in ascending order
  print('Enter a number to search: ');
  int searchValue =
      int.parse(stdin.readLineSync()!); // Reads the user input as integer
  int resultIndex =
      binarySearch(numbers, searchValue); // Performs binary search on the list
  if (resultIndex == -1) {
    print('$searchValue not found in the list.');
  } else {
    print('$searchValue found at index $resultIndex.');
  }
}

int binarySearch(List<int> numbers, int searchValue) {
  int low = 0;
  int high = numbers.length - 1;
  while (low <= high) {
    int mid = (low + high) ~/ 2;
    if (numbers[mid] == searchValue) {
      return mid;
    } else if (numbers[mid] < searchValue) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}
