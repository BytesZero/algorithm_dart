import 'dart:math';

import 'package:algorithm_dart/src/binary/binary_search.dart';
import 'package:test/test.dart';

///二分法单元测试
void main() {
  group('测试二分查找法', () {
    //数组
    List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    //key值
    int key = 3;
    //索引
    int index = 2;
    //结果
    int result = -1;

    test('测试1', () {
      print(' key:$key arr:${arr.toString()}');
      result = binarySearch(arr, key);
      expect(result, equals(index));
    });

    test('测试2', () {
      ///清空
      arr.clear();
      //生成 随机key
      key = Random().nextInt(1000000) * 2;
      //组装数据
      for (int i = 0; i < 1000000; i++) {
        int value = i * 2;
        arr.add(value);
        //找到索引
        if (value == key) {
          index = i;
        }
      }
      print('key:$key index:$index arr:${arr.toString()} ');
      result = binarySearch(arr, key);
      expect(result, equals(index));
    });

    test('测试3', () {
      key = 23;
      print('arr:${arr.toString()} key:$key');
      result = binarySearch(arr, key);
      expect(result, equals(-1));
    });
  });
}
