///快速排序
List<int> quickSort(List<int> arr) {
  return _sort(arr, 0, (arr?.length ?? 0) - 1);
}

///排序
List<int> _sort(List<int> arr, int start, int end) {
  //开始位置小于结束位置
  if (start < end) {
    //获取基准值索引
    int pivotIndex = _partition(arr, start, end);
    //排序左边
    _sort(arr, start, pivotIndex - 1);
    //排序右边
    _sort(arr, pivotIndex + 1, end);
  }
  return arr;
}

///基准值索引
int _partition(List<int> arr, int lo, int hi) {
  int i = lo, j = hi + 1;
  //获取基准值
  int pivot = arr[lo];
  while (true) {
    //从左往右扫描
    while (arr[++i] < pivot) {
      //遍历到最右边
      if (i == hi) {
        break;
      }
    }
    //从右往左扫描
    while (arr[--j] > pivot) {
      //遍历到最左边
      if (j == lo) {
        break;
      }
    }
    //i与j汇合，说明遍历交换完毕，跳出循环
    if (i >= j) {
      break;
    }

    //交换i和j的位置
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
  //基准值与j位(小于基准值的最后1位**j位本来是大于基准值的第一位，最后一次扫描时--j了)交换位置
  arr[lo] = arr[j];
  arr[j] = pivot;
  return j;
}
