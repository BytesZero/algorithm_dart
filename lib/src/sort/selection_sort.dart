///选择排序
List<int> selectionSort(List<int> arr) {
  //数据为空直接返回
  if (arr?.isEmpty ?? true) {
    return arr;
  }
  //循环遍历
  //arr.length - 1 （即：最后一位不与自己比较）
  for (var i = 0; i < arr.length - 1; ++i) {
    //最小值位置
    int minIndex = i;
    //遍历获取最小值位置
    for (var j = i + 1; j < arr.length; ++j) {
      //比较出最小值
      if (arr[j] < arr[minIndex]) {
        //更新最小值位置为当前j的位置
        minIndex = j;
      }
    }

    //当前最小值位置不与i位置相等
    if (i != minIndex) {
      //交换位置
      int temp = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = temp;
    }
  }
  //返回排序后的数组
  return arr;
}
