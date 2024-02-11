import 'package:flutter/material.dart';
import 'package:loading_shimmers/page_skeletons/shimmers/box_shimmer.dart';
import 'package:loading_shimmers/page_skeletons/shimmers/circle_shimmer.dart';
import 'package:loading_shimmers/page_skeletons/shimmers/pipe_shimmer.dart';
import 'package:loading_shimmers/page_skeletons/shimmers/sliding_gradient_transform.dart';

class HomeSkeleton extends StatefulWidget {
  const HomeSkeleton({super.key});

  @override
  State<HomeSkeleton> createState() => _HomeSkeletonState();
}

class _HomeSkeletonState extends State<HomeSkeleton> with SingleTickerProviderStateMixin {

  late AnimationController _shimmerController;
  late LinearGradient gradient;
  late Animation animation;

  @override
  void initState() {


    _shimmerController = AnimationController.unbounded(vsync: this)
      ..repeat(
          min: 0.9, max: 1.0, period: const Duration(seconds: 2));
    animation = CurvedAnimation(
        parent: _shimmerController,
        curve: Curves.easeIn)..addListener(() {
      gradient = LinearGradient(
          colors: const [
            Color(0xFF5D5D61),
            Color(0xFF3E3B3B),
            Color(0xFF2C2C2F),
          ] ,
          stops: const [
            0.1, 0.3, 0.4
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
    super.initState();
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeTransition(
      opacity: animation as Animation<double>,
      child: ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (Rect bounds) {
            return gradient.createShader(bounds);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: 50.0,
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: false,
                  itemBuilder: (context, index) =>
                      const Padding(
                        padding: EdgeInsets.only(
                            right: 10.0
                        ),
                        child: CircleSkeleton(
                          radius: 25,
                        ),
                      ),
                  scrollDirection: Axis.horizontal
                ),
              ),
              //
              const SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: BoxSkeleton(
                        width: size.width ,
                        height: size.width *.5,
                        radius: 5.0,
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
                          height: size.width *.225,
                          radius: 5.0,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        BoxSkeleton(
                          width: size.width,
                          height: size.width *.25,
                          radius: 5.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 20.0,
              ),
              //can be a list of articles
              Column(
                children: [
                  BoxSkeleton(
                      width: size.width,
                      height: size.width *.65
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleSkeleton(
                        radius: 22.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            PipeSkeleton(
                              factor: .8,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            PipeSkeleton(
                              factor: .8,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              )
            ]
          )
      ),
    );
  }
}
