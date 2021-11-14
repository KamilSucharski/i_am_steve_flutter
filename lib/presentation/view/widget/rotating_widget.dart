import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/domain/util/extension/generic.dart';

class RotatingWidget extends StatefulWidget {
  final Widget child;
  final Duration duration;

  const RotatingWidget({
    required final this.child,
    final this.duration = const Duration(milliseconds: 2500),
  }) : super();

  @override
  State<StatefulWidget> createState() => _RotatingWidgetState();
}

class _RotatingWidgetState extends State<RotatingWidget> with SingleTickerProviderStateMixin {
  AnimationController? animationController;

  @override
  Widget build(final BuildContext context) {
    final controller = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    ).also((it) => animationController = it);

    final Widget body = RotationTransition(
        turns: Tween(begin: 0.0, end: 1.0).animate(controller),
        child: widget.child,
    );

    if (controller.isAnimating == false) {
      controller.repeat();
    }

    return body;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }
}