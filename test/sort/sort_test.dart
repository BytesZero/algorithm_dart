import 'package:algorithm_dart/src/sort/sort.dart';
import 'package:test/test.dart';

void main() {
  group('排序测试', () {
    List<int> arr = [
      30,
      51,
      4,
      67,
      13,
      81,
      57,
      87,
      81,
      47,
      81,
      36,
      83,
      94,
      58,
      35,
      37,
      16,
      19,
      78,
      69,
      89,
      17,
      36,
      22,
      24,
      77,
      59,
      42,
      14,
      46,
      30,
      9,
      60,
      20,
      13,
      48,
      94,
      32,
      45,
      21,
      54,
      51,
      75,
      15,
      31,
      56,
      28,
      30,
      99,
      86,
      47,
      63,
      30,
      40,
      89,
      30,
      47,
      66,
      41,
      80,
      68,
      10,
      63,
      70,
      80,
      82,
      85,
      4,
      96,
      87,
      67,
      17,
      85,
      3,
      2,
      84,
      85,
      64,
      92,
      41,
      55,
      59,
      12,
      10,
      11,
      86,
      81,
      34,
      93,
      32,
      35,
      28,
      70,
      46,
      23,
      65,
      37,
      57,
      24,
      72,
      19,
      87,
      34,
      75,
      79,
      19,
      8,
      23,
      82
    ];
    List<int> testResult = [
      2,
      3,
      4,
      4,
      8,
      9,
      10,
      10,
      11,
      12,
      13,
      13,
      14,
      15,
      16,
      17,
      17,
      19,
      19,
      19,
      20,
      21,
      22,
      23,
      23,
      24,
      24,
      28,
      28,
      30,
      30,
      30,
      30,
      30,
      31,
      32,
      32,
      34,
      34,
      35,
      35,
      36,
      36,
      37,
      37,
      40,
      41,
      41,
      42,
      45,
      46,
      46,
      47,
      47,
      47,
      48,
      51,
      51,
      54,
      55,
      56,
      57,
      57,
      58,
      59,
      59,
      60,
      63,
      63,
      64,
      65,
      66,
      67,
      67,
      68,
      69,
      70,
      70,
      72,
      75,
      75,
      77,
      78,
      79,
      80,
      80,
      81,
      81,
      81,
      81,
      82,
      82,
      83,
      84,
      85,
      85,
      85,
      86,
      86,
      87,
      87,
      87,
      89,
      89,
      92,
      93,
      94,
      94,
      96,
      99
    ];

    ///用于生成数据
//    for (var i = 0; i < 90; ++i) {
//      int value = Random().nextInt(100);
//      arr.add(value);
//    }

    test('冒泡排序', () {
      ///打乱顺序
      arr.shuffle();
      print('bubble arr:${arr.toString()}');
      List<int> result = bubbleSort(arr);
      print('bubble sort:${result.toString()}');
      expect(result, equals(testResult));
    });

    test('插入排序', () {
      ///打乱顺序
      arr.shuffle();
      print('insertion arr:${arr.toString()}');
      List<int> result = insertionSort(arr);
      print('insertion sort:${result.toString()}');
      expect(result, equals(testResult));
    });

    test('选择排序', () {
      ///打乱顺序
      arr.shuffle();
      print('selection arr:${arr.toString()}');
      List<int> result = selectionSort(arr);
      print('selection sort:${result.toString()}');
      expect(result, equals(testResult));
    });

    test('快速排序', () {
      ///打乱顺序
      arr.shuffle();
      print('quick arr:${arr.toString()}');
//      print('quick arr:[1, 3, 2, 8, 5, 3, 6]');
//      List<int> result = quickSort([1, 3, 2, 8, 5, 3, 6]);
      List<int> result = quickSort(arr);
      print('quick sort:${result.toString()}');
//      expect(result, equals([1, 2, 3, 3, 5, 6, 8]));
      expect(result, equals(testResult));
    });
  });
}
