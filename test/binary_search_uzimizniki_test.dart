import 'package:binary_search_uzimizniki/binary_search_uzimizniki.dart';
import 'package:test/test.dart';

void main() {
  group('BinarySearch Tests', () {
    // Set up a sample sorted list for testing
    final List<int> sortedList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21];

    setUp(() {
      // Additional setup goes here, if needed
    });

    test('Value is found in the list', () {
      // Test if the value 11 is correctly found in the list
      final result = BinarySearch.search(sortedList, 11);
      expect(result.index, equals(5)); // 11 is at index 5
      expect(result.index != -1, isTrue); // Ensure the index is not -1
    });

    test('Value is not found in the list', () {
      // Test if a non-existent value 8 returns -1
      final result = BinarySearch.search(sortedList, 8);
      expect(result.index, equals(-1)); // 8 is not in the list
    });

    test('Value is found at the start of the list', () {
      // Test if the value 1 is found at the start of the list
      final result = BinarySearch.search(sortedList, 1);
      expect(result.index, equals(0)); // 1 is at index 0
    });

    test('Value is found at the end of the list', () {
      // Test if the value 21 is found at the end of the list
      final result = BinarySearch.search(sortedList, 21);
      expect(result.index,
          equals(sortedList.length - 1)); // 21 is at the last index
    });

    test('Time taken is recorded', () {
      // Test if the time taken for the search is recorded
      final result = BinarySearch.search(sortedList, 11);
      expect(result.timeTaken.inMilliseconds, greaterThanOrEqualTo(0));
    });

    test('Empty list returns -1', () {
      // Test that searching in an empty list returns -1
      final result = BinarySearch.search([], 5);
      expect(result.index, equals(-1));
    });
  });
}
