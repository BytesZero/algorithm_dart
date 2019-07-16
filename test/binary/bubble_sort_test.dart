import 'dart:math';

import 'package:algorithm_dart/src/sort/bubble_sort.dart';
import 'package:test/test.dart';

void main() {
  group('排序测试', () {
    List<int> arr = [];
    for (var i = 0; i < 10; ++i) {
      int value = Random().nextInt(100);
      arr.add(value);
    }

    print('arr:${arr.toString()}');

    test('冒泡排序', () {
      List<int> result = bubbleSort(arr);
      print('sort arr:${arr.toString()}');
      arr.sort((a, b) => a.compareTo(b));
      print('result:${result.toString()}');
      expect(result, equals(arr));
    });
  });
}
