import 'package:revive/models/charging_point.dart';

class _QuadTreeNode {
  final ChargingPoint chargingPoint;
  final bool isLeaf;
  final _QuadTreeNode? topLeft;
  final _QuadTreeNode? topRight;
  final _QuadTreeNode? bottomLeft;
  final _QuadTreeNode? bottomRight;

  _QuadTreeNode({
    required this.chargingPoint,
    required this.isLeaf,
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
  });
}

class QuadTree {
  final _QuadTreeNode root;

  QuadTree({
    required this.root,
  });

  void insert(ChargingPoint chargingPoint) {
    var pointer = this.root;
  }
}
