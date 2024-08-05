# Binary Search Package

## Overview

The `binary_search_uzimizniki` package provides a utility for performing binary search operations on sorted lists in Dart. The package includes a method that allows you to search for a target value within a sorted list, returning the index of the target value and the time taken to perform the search.

## Features

- Perform binary search on a sorted list
- Return the index of the target value if found
- Return `-1` if the target value is not found
- Measure and return the time taken for the search operation

## Usage

Import the package into your Dart file:

dart
import 'package:binary_search_uzimizniki/binary_search_uzimizniki.dart';
Define your sorted list and target value:

dart
List<int> sortedList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21];
int targetValue = 11;
Perform a binary search on the sorted list:

dart
var result = BinarySearch.search(sortedList, targetValue);
Check if the target value was found and print the result:

dart
if (result.index != -1) {
  print('Value found at index: ${result.index}');
} else {
  print('Value not found.');
}
Print the time taken to perform the search:

dart
print('Time taken: ${result.timeTaken.inMilliseconds} milliseconds');

## Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  binary_search_uzimizniki: ^1.0.0
