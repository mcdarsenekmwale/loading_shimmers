import 'package:flutter/material.dart';
import 'package:loading_shimmers/page_skeletons/analytics_skeleton.dart';
import 'package:loading_shimmers/widgets/custom_icon_btn.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0).copyWith(top: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Analytics",
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade300
                ),
              ),
              CustomIconButton(
                  icon: Icons.more_vert,
                  onClick: (){}
              )
            ],
          ),

          const AnalyticsSkeleton()

        ],
      ),
    );
  }
}
