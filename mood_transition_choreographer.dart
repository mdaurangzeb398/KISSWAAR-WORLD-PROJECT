import 'package:flutter/material.dart';

class MoodTransitionChoreographer extends StatefulWidget {
  final Widget child;
  final Color background;
  final IconData badgeIcon;
  final Duration duration;

  const MoodTransitionChoreographer({
    super.key,
    required this.child,
    required this.background,
    required this.badgeIcon,
    this.duration = const Duration(milliseconds: 800),
  });

  @override
  State<MoodTransitionChoreographer> createState() => _MoodTransitionChoreographerState();
}

class _MoodTransitionChoreographerState extends State<MoodTransitionChoreographer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _iconSize;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _iconSize = Tween<double>(begin: 24, end: 40).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration,
      color: widget.background,
      child: Column(
        children: [
          const SizedBox(height: 10),
          AnimatedBuilder(
            animation: _iconSize,
            builder: (_, __) => Icon(widget.badgeIcon, size: _iconSize.value, color: Colors.orangeAccent),
          ),
          const SizedBox(height: 10),
          widget.child,
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
