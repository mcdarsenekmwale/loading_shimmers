import 'package:flutter/material.dart';
class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onClick
  });

  final IconData? icon;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: onClick,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 7.0,
            vertical: 5.0
          ),
          child: Icon(
            icon,
            color: Colors.grey.shade300,
          ),
        )
    );
  }
}
