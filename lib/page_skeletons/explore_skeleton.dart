import 'package:flutter/material.dart';
import 'package:loading_shimmers/page_skeletons/shimmers/box_shimmer.dart';

import 'package:loading_shimmers/page_skeletons/shimmers/sliding_gradient_transform.dart';

class ExploreSkeleton extends StatefulWidget {
  const ExploreSkeleton({super.key});

  @override
  State<ExploreSkeleton> createState() => _ExploreSkeletonState();
}

class _ExploreSkeletonState extends State<ExploreSkeleton> with SingleTickerProviderStateMixin {

  late AnimationController _shimmerController;
  LinearGradient? gradient;
  late Animation animation;

  @override
  void initState() {
    _shimmerController = AnimationController.unbounded(vsync: this)
      ..repeat(
          min: 0.8, max: 1.0, period: const Duration(seconds: 2));
    animation = CurvedAnimation(
        parent: _shimmerController,
        curve: Curves.easeIn)..addListener(() {
      gradient = LinearGradient(
          colors: const [
            Color(0xFF5D5D61),
            Color(0xFF3E3B3B),
          ] ,
          stops: const [
            0.1, 0.4
          ],
          begin: const Alignment(
              -1.0, -0.3
          ),
          end: const Alignment(1.0, 0.3),
          tileMode: TileMode.clamp,
          transform:
          SlidingGradientTransform(slidePercent: _shimmerController.value)
      );
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeTransition(
      opacity: animation as Animation<double>,
      child: ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (Rect bounds) {
            return gradient!.createShader(bounds);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: BoxSkeleton(
                        width: size.width ,
                        height: size.width *.55,
                        radius: 5.0,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: BoxSkeleton(
                      width: size.width ,
                      height: size.width *.55,
                      radius: 5.0,
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 20.0,
              ),
              //can be a list of articles
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        BoxSkeleton(
                          width: size.width ,
                          height: size.width *.35,
                          radius: 5.0,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BoxSkeleton(
                          width: size.width,
                          height: size.width *.35,
                          radius: 5.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        BoxSkeleton(
                          width: size.width ,
                          height: size.width *.35,
                          radius: 5.0,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BoxSkeleton(
                          width: size.width,
                          height: size.width *.35,
                          radius: 5.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]
          )
      ),
    );
  }
}
