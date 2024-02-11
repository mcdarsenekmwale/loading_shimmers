import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.color = const Color(0xffffffff),
    this.isColor = true
  });

  final String? icon;
  final Color? color;
  final bool? isColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.deferToChild,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5.0,
          vertical: 5.0
        ),
        child: SvgPicture.asset("assets/icons/$icon.svg",
            height: 20.0,
            color:isColor!? color!.withOpacity(0.9): color
        ),
      ),
    );
  }
}
