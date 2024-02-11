import 'package:flutter/material.dart';
import 'package:loading_shimmers/page_skeletons/home_skeleton.dart';
import 'package:loading_shimmers/widgets/top_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: 2.0,
          ),
          child: TopAppBar(),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                left: 15.0,
                right: 15.0
            ),
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                HomeSkeleton()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
