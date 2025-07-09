import 'package:flutter/material.dart';

class BadgeGlowRipple extends StatefulWidget {
  final Widget child;
  final Color rippleColor;
  const BadgeGlowRipple({super.key, required this.child, required this.rippleColor});

  @override
  State<BadgeGlowRipple> createState() => _BadgeGlowRippleState();
}

class _BadgeGlowRippleState extends State<BadgeGlowRipple> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rippleSize;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _rippleSize = Tween<double>(begin: 0, end: 200).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedBuilder(
          animation: _rippleSize,
          builder: (_, __) => Container(
            width: _rippleSize.value,
            height: _rippleSize.value,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.rippleColor.withOpacity(0.2),
            ),
          ),
        ),
        widget.child,
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
