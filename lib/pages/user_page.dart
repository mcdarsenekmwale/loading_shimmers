import 'package:flutter/material.dart';
import 'package:loading_shimmers/page_skeletons/shimmers/circle_shimmer.dart';
import 'package:loading_shimmers/page_skeletons/shimmers/label_value_pair.dart';
import 'package:loading_shimmers/page_skeletons/shimmers/pipe_shimmer.dart';
import 'package:loading_shimmers/widgets/custom_icon_btn.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             CustomIconButton(
                 icon: Icons.settings,
                 onClick: (){}
             ),
              CustomIconButton(
                  icon: Icons.notifications_none_rounded,
                  onClick: (){}
              ),
            ],
          ),

          const SizedBox(
            height: 30.0,
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Theme.of(context).highlightColor,
                ),
              ),

              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LabelValuePair(),
                    LabelValuePair(),
                    LabelValuePair(),
                  ],
                ),
              )
            ],
          )

        ],
      ),
    );
  }



}
