import 'package:flutter/material.dart';
import 'package:loading_shimmers/widgets/bottom_nav_item.dart';

class BottomNavigationAppBar extends StatelessWidget {
  const BottomNavigationAppBar({super.key,
    required this.currentIndex,
    required this.onSelect
  });

  final int? currentIndex;
  final Function? onSelect;

  static final List<Map> menuItems = [
    {
      "icon":Icons.home_filled,
      "activeIcon":Icons.home_filled,
      "title":"Home"
    },
    {
      "icon":Icons.explore_outlined,
      "activeIcon":Icons.explore,
      "title":"Explore"
    },
    {
      'icon':Icons.add_circle_outline_rounded,
      "activeIcon":Icons.add_circle_outlined,
      'title':''
    },
    {
      "icon":Icons.analytics_outlined,
      "activeIcon":Icons.analytics,
      "title":"Graph"
    },
    {
      "icon":Icons.account_circle_outlined,
      "activeIcon":Icons.account_circle,
      "title":"User"
    }
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 57.0,
      padding: const EdgeInsets.only(
          top: 5.0,
          left: 20.0,
          right: 20.0,
          bottom: 4.0
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade900.withOpacity(.1),
          border: Border(
              top: BorderSide(
                  color: Colors.grey.shade800,
                  width: 0.6
              )
          )
      ),

      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: menuItems.asMap()
              .entries.map((item) =>
              BottomNavItem(
                  label: item.value['title'],
                  isActive: currentIndex == item.key,
                  onClick: (){
                    onSelect!(item.key);
                  },
                  activeIcon: item.value['activeIcon'],
                  icon: item.value['icon']
              )
          ).toList(),
        ),
      ),
    );
  }
}
