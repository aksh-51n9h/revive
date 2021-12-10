import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  const Spacing({Key? key, this.vertical = 0.0, this.horizontal = 0.0})
      : super(key: key);
  final double vertical;
  final double horizontal;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: vertical,
      width: horizontal,
    );
  }
}
