///插入排序
List<int> insertionSort(List<int> arr) {
  for (var i = 1; i < arr.length; i++) {
    //获取当前位置的零时值
    var temp = arr[i];
    //获取当前位置的前一位（即：之前排好序的最后一位）
    int j = i - 1;
    //如果j>=0没有与已排好序的比较晚完 且 零时值小于 j 位的值，则 j 位向后移一位
    while ((j >= 0) && (temp < arr[j])) {
      arr[j + 1] = arr[j];
      //向前移一位
      --j;
    }
    //如果遍历到合适的位置(即：比前一个数字数据大，比后一个数据小),则插入当前空位
    arr[j + 1] = temp;
  }
  //返回排序后的集合
  return arr;
}
