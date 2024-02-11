import 'package:flutter/material.dart';
class CircleSkeleton extends StatelessWidget {
  const CircleSkeleton({
    super.key,
    this.radius = 20.0
  });

  final double? radius;

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      maxRadius: radius,
      backgroundColor: Theme.of(context).hintColor,
    );
  }
}
