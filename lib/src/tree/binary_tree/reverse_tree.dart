import 'tree_node.dart';

///翻转二叉树
TreeNode reverseTree(TreeNode node) {
  if (node != null) {
    //先翻转左树所有子节点
    TreeNode leftTree = reverseTree(node.leftNode);
    //再翻转右树所有子节点
    TreeNode right = reverseTree(node.rightNode);
    //根节点翻转左右树
    node.rightNode = leftTree;
    node.leftNode = right;
  }
  return node;
}
