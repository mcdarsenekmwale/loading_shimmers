import 'package:flutter/material.dart';

class PipeSkeleton extends StatelessWidget {
  const PipeSkeleton({
    super.key,
    this.factor = .25,
    this.color = Colors.black54
  });

  final double? factor;
  final Color? color;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return  Container(
      width:size.width * factor!,
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: color
      ),
    );
  }
}
