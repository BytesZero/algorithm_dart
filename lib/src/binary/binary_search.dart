///二分查找法
///arr:[1,2,3,4,5,6,7,8,9] key:3
///return:2
///
int binarySearch(List<int> arr, int key) {
  if (arr?.isEmpty ?? true) {
    return -1;
  }
  //低位
  int lo = 0;
  //高位
  int hi = arr.length - 1;
  //低位小于等于高位
  while (lo <= hi) {
    //计算中位值
    int mid = (lo + (hi - lo) / 2).ceil();
    if (key < arr[mid]) {
      //key 小于中间位，说明key位于低位到中位之间，高位转变为中间位减1的位置
      hi = --mid;
    } else if (key > arr[mid]) {
      //key 大于中间位，说明key位于中位到高位之间，低位转变为中间位加1的位置
      lo = ++mid;
    } else {
      //相等返回当前中位位置
      return mid;
    }
  }
  //没查到返回 -1
  return -1;
}
