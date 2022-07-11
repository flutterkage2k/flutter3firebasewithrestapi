import 'package:flutter/material.dart';

class VerticalSpacing extends StatelessWidget {
  final double height;

  VerticalSpacing(this.height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
