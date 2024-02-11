import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({super.key,
    required this.label,
    this.isActive = false,
    required this.onClick,
    required this.activeIcon,
    required this.icon
  });

  final String? label;
  final bool? isActive;
  final VoidCallback onClick;
  final IconData? activeIcon;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {

    return  GestureDetector(
      onTap: onClick,
      behavior: HitTestBehavior.deferToChild,
      child: Column(
        children: [
          Expanded(
            child: Icon(
              !isActive!?icon: activeIcon,
              color:  isActive!? Colors.white : Colors.grey.shade400,
              size: label == '' ? 35.0: 20.0,
            ),
          ),
          const SizedBox(
            height: 1.0,
          ),
          Text(label!,
            style: TextStyle(
                color: isActive!? Colors.grey.shade200 : Colors.grey.shade400,
                fontWeight: isActive!? FontWeight.w500: FontWeight.w400,
                fontSize: 12.0
            ),
          )
        ],
      ),
    );
  }
}
