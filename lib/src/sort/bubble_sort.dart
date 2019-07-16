///
/// 冒泡排序
List<int> bubbleSort(List<int> arr) {
  //遍历所有元素
  for (var i = 0; i < arr.length; ++i) {
    //从第二个元素开始遍历
    for (var j = i + 1; j < arr.length; ++j) {
      //取出j位值
      int temp = arr[j];
      //j位值和i位值比较，小于则交换位置，放到前面
      if (temp < arr[i]) {
        //先把i位值放到j位上
        arr[j] = arr[i];
        //再把临时j位值，放到i位上
        arr[i] = temp;
      }
    }
  }
  return arr;
}
