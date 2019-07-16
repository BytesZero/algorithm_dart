///
/// 冒泡排序
List<int> bubbleSort(List<int> arr) {
  //遍历所有元素
  int count = 0;
  for (var i = 0; i < arr.length; ++i) {
    for (var j = i + 1; j < arr.length; ++j) {
      ++count;
      int temp = arr[j];
      if (temp < arr[i]) {
        arr[j] = arr[i];
        arr[i] = temp;
      }
      print('${arr.toString()}');
    }
  }
  print('count:$count');

  return arr;
}
