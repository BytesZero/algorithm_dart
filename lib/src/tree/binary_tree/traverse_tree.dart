import 'tree_node.dart';

///先序遍历（根>左>右）
void preTraversingTree(TreeNode treeNode, List list) {
  if (treeNode != null) {
    //获取根节点值
    var value = treeNode.value;
    //添加到数组中
    list.add(value);
    //遍历左子节点
    preTraversingTree(treeNode.leftNode, list);
    //遍历右子节点
    preTraversingTree(treeNode.rightNode, list);
  }
}

///中序遍历（左>根>右）
void inTraversingTree(TreeNode treeNode, List list) {
  if (treeNode != null) {
    //遍历左子节点
    inTraversingTree(treeNode.leftNode, list);
    //获取根节点值
    var value = treeNode.value;
    //添加到数组中
    list.add(value);
    //遍历左子节点
    inTraversingTree(treeNode.rightNode, list);
  }
}

///后续遍历(左>右>根)
void rearTraversingTree(TreeNode treeNode, List list) {
  if (treeNode != null) {
    //先遍历左子节点
    rearTraversingTree(treeNode.leftNode, list);
    //后遍历右子节点
    rearTraversingTree(treeNode.rightNode, list);
    //获取根节点值
    var value = treeNode.value;
    //添加到数组中
    list.add(value);
  }
}
