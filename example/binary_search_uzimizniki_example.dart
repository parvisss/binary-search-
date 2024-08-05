import 'package:binary_search_uzimizniki/binary_search_uzimizniki.dart';

void main() {
  // Define a sorted list of integers
  List<int> sortedList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21];

  // Define the target value to search for in the list
  int targetValue = 11;

  // Perform a binary search on the sorted list to find the target value
  var result = BinarySearch.search(sortedList, targetValue);

  // Check if the search result indicates that the target value was found
  if (result.index != -1) {
    // If the value is found, print its index
    print('Value found at index: ${result.index}');
  } else {
    // If the value is not found, indicate that it was not found
    print('Value not found.');
  }

  // Print the time taken to perform the search operation in milliseconds
  print('Time taken: ${result.timeTaken.inMilliseconds} milliseconds');
}
