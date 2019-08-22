import 'package:algorithm_dart/src/tree/tree.dart';
import 'package:test/test.dart';

///二叉树测试
void main() {
  group('二叉树', () {
    ///创建
    ///    10
    ///  9    20
    ///    15   35

    //第一种定义方法
    TreeNode treeNode1 = TreeNode(10);
    treeNode1.leftNode = TreeNode(9);
    TreeNode subNode = TreeNode(20);
    treeNode1.rightNode = subNode;
    subNode.leftNode = TreeNode(15);
    subNode.rightNode = TreeNode(35);
    //第二种定义方法
    TreeNode treeNode2 = TreeNode(10)
      ..leftNode = TreeNode(9)
      ..rightNode = TreeNode(20)
      ..rightNode.leftNode = TreeNode(15)
      ..rightNode.rightNode = TreeNode(35);
    //第三种定义方法
    TreeNode treeNode3 =
        TreeNode(10, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(35)));
    //遍历结果
    List result = [];

    test('先序遍历(根>左>右)', () {
      result.clear();
      preTraversingTree(treeNode2, result);
      print('先序遍历(根>左>右) result:${result.toString()}');
      expect(result, equals([10, 9, 20, 15, 35]));
    });

    test('中序遍历(左>根>右)', () {
      result.clear();
      inTraversingTree(treeNode2, result);
      print('中序遍历(左>根>右) result:${result.toString()}');
      expect(result, equals([9, 10, 15, 20, 35]));
    });

    test('后序遍历(左>右>根)', () {
      result.clear();
      rearTraversingTree(treeNode2, result);
      print('后序遍历(左>右>根) result:${result.toString()}');
      expect(result, equals([9, 15, 35, 20, 10]));
    });

    test('二叉树翻转', () {
      result.clear();
      TreeNode reverseNode = reverseTree(treeNode1);
      preTraversingTree(reverseNode, result);
      print('二叉树翻转 先序遍历(根>左>右) result:${result.toString()}');
      expect(result, equals([10, 20, 35, 15, 9]));
    });
  });
}
