import 'package:flutter/material.dart';
import 'package:loading_shimmers/page_skeletons/explore_skeleton.dart';
import 'package:loading_shimmers/widgets/explore_search_field.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10.0,
          left: 15.0,
          right: 15.0
      ),
      child: Column(
        children: [
          ExploreSearchField(
            controller: _controller,
          ),
          const SizedBox(
            height: 15.0,
          ),
          const ExploreSkeleton()
        ],
      ),
    );
  }
}
