///二叉树实体定义
class TreeNode {
  //值
  var value;

  //左子节点
  TreeNode leftNode;

  //右子节点
  TreeNode rightNode;

  //构造函数
  TreeNode(this.value, [this.leftNode, this.rightNode]);
}
