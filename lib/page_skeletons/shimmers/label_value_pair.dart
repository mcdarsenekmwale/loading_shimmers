import 'package:flutter/material.dart';
import 'package:loading_shimmers/page_skeletons/shimmers/pipe_shimmer.dart';

class LabelValuePair extends StatelessWidget {
  const LabelValuePair({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PipeSkeleton(
          factor: .12,
          color: Theme.of(context).highlightColor,
        ),
        const SizedBox(
          height: 7.0,
        ),
        PipeSkeleton(
          factor: .12,
          color: Theme.of(context).highlightColor,
        )
      ],
    );
  }
}
