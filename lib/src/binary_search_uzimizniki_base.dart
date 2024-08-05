import 'dart:core';

/// A class that provides the result of a binary search.
class BinarySearchResult {
  final int index;
  final Duration timeTaken;

  BinarySearchResult({required this.index, required this.timeTaken});
}

/// A class that implements the binary search algorithm.
class BinarySearch {
  /// Searches for [value] in a sorted [list].
  ///
  /// Returns a [BinarySearchResult] containing the index of the found value
  /// and the time taken to perform the search. If the value is not found,
  /// the index will be -1.
  static BinarySearchResult search(List<int> list, int value) {
    final stopwatch = Stopwatch()..start();

    int left = 0;
    int right = list.length - 1;

    while (left <= right) {
      int middle = left + (right - left) ~/ 2;

      // Check if value is present at mid
      if (list[middle] == value) {
        stopwatch.stop();
        return BinarySearchResult(index: middle, timeTaken: stopwatch.elapsed);
      }

      // If value is greater, ignore left half
      if (list[middle] < value) {
        left = middle + 1;
      }
      // If value is smaller, ignore right half
      else {
        right = middle - 1;
      }
    }

    stopwatch.stop();
    // If we reach here, then the element was not present
    return BinarySearchResult(index: -1, timeTaken: stopwatch.elapsed);
  }
}
