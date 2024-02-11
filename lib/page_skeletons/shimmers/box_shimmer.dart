import 'package:flutter/material.dart';

//skeleton for a single box
class BoxSkeleton extends StatelessWidget {
  const BoxSkeleton({
    super.key,
     required this.width,
     required this.height,
    this.vertical = 0.0,
    this.horizontal = 0.0,
    this.radius = 0.0
  });

  final double? width;
  final double? height;
  final double? vertical;
  final double? horizontal;
  final double? radius;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: horizontal!,
          vertical: vertical!
      ),
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius!),
            color: Theme.of(context).hintColor
        ),
      ),
    );
  }
}

