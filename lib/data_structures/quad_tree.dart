import 'package:revive/models/charging_point.dart';

class QuadTreeNode {
  final Region region;
  final ChargingPoint? chargingPoint;
  final bool isLeaf;
  final QuadTreeNode? topLeft;
  final QuadTreeNode? topRight;
  final QuadTreeNode? bottomLeft;
  final QuadTreeNode? bottomRight;

  QuadTreeNode({
    this.region = const Region(),
    this.chargingPoint,
    this.isLeaf = false,
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
  });

  factory QuadTreeNode.pointNode() {
    return QuadTreeNode();
  }

  factory QuadTreeNode.regionNode() {
    return QuadTreeNode();
  }
}

class Region {
  final double x1;
  final double x2;
  final double y1;
  final double y2;

  const Region({
    this.x1 = 0.0,
    this.x2 = 0.0,
    this.y1 = 0.0,
    this.y2 = 0.0,
  });

  bool inRegion(ChargingPoint chargingPoint) {
    // TODO: implement inRegion @aksh-51n9h
    return false;
  }
}

class QuadTree {
  final QuadTreeNode root;

  QuadTree({
    required this.root,
  });

  void insert(ChargingPoint chargingPoint) {
    var pointer = this.root;
  }
}
