import 'package:flutter/material.dart';

class AnimatedInput extends StatelessWidget {
  final AnimationController controller;
  final Animation<Color> containerColorAnim;
  final Animation<double> containerOpacityAnim;
  final Animation<double> containerBorderRadiusAnim;
  final Animation<double> containerSizeAnim;

  AnimatedInput({this.controller})
      : containerOpacityAnim = Tween(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            // any animations -> view docs
            parent: controller,
            curve: Interval(0.7, 0.9),
          ),
        ),
        containerSizeAnim = Tween(
          begin: 60.0,
          end: 280.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.2, 0.3),
          ),
        ),
        containerBorderRadiusAnim = Tween(
          begin: 0.0,
          end: 30.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.25, 0.4),
          ),
        ),
        containerColorAnim = ColorTween(
          begin: Colors.white.withOpacity(0),
          end: Colors.black12,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.25),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
