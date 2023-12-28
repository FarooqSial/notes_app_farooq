import 'package:flutter/material.dart';
import 'package:notes_app/helpers/constants.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;
  final Border? border;

  CustomContainer({
    this.height = 54,
    this.width = 355,
    this.child,
    this.color,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: border,
        color: color,
      ),
      child: child,
    );
  }
}
