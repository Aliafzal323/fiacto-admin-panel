

import 'package:flutter/material.dart';

class CustomColorContainer extends StatelessWidget {
  const CustomColorContainer({
    super.key,
    required this.height,
    required this.title,
    this.width,
  });
  final double height;
  final double? width;
  final Text title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height, child: Center(child: title));
  }
}
