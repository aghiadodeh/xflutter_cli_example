/// Generated By XFlutter Cli.
/// 
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:flutter/material.dart';

class CustomizedAnimatedWidget extends StatefulWidget {
  /// [child] is wrapped [Widget] inside [CustomizedAnimatedWidget].
  final Widget child;

  /// animation [Duration] default is Duration(milliseconds: 300).
  final Duration duration;

  /// animation sliding value.
  final double from;

  const CustomizedAnimatedWidget({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 300),
    this.from = 30,
  }) : super(key: key);

  @override
  State<CustomizedAnimatedWidget> createState() => CustomizedAnimatedWidgetState();
}

class CustomizedAnimatedWidgetState extends State<CustomizedAnimatedWidget> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: widget.duration,
      tween: Tween<double>(begin: widget.from, end: 0),
      builder: (BuildContext context, double value, Widget? child) => Transform.translate(
        offset: Offset(0, value),
        child: TweenAnimationBuilder(
          duration: widget.duration,
          tween: Tween<double>(begin: 0, end: 1),
          builder: (BuildContext context, double opacity, Widget? child) => AnimatedOpacity(
            opacity: opacity,
            duration: widget.duration,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
