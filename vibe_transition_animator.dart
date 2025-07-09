import 'package:flutter/material.dart';

class VibeTransitionAnimator extends StatefulWidget {
  final Widget child;
  final Color targetColor;

  const VibeTransitionAnimator({super.key, required this.child, required this.targetColor});

  @override
  State<VibeTransitionAnimator> createState() => _VibeTransitionAnimatorState();
}

class _VibeTransitionAnimatorState extends State<VibeTransitionAnimator> {
  Color? _currentColor;

  @override
  void initState() {
    super.initState();
    _currentColor = widget.targetColor;
  }

  @override
  void didUpdateWidget(covariant VibeTransitionAnimator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.targetColor != oldWidget.targetColor) {
      setState(() => _currentColor = widget.targetColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 700),
      color: _currentColor,
      child: widget.child,
    );
  }
}
