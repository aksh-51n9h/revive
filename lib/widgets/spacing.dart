import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  const Spacing({Key? key, this.height = 0.0}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: this.height);
  }
}
