import 'package:flutter/material.dart';

class EmojiDanceAnimator extends StatefulWidget {
  final List<String> emojis;
  const EmojiDanceAnimator({super.key, required this.emojis});

  @override
  State<EmojiDanceAnimator> createState() => _EmojiDanceAnimatorState();
}

class _EmojiDanceAnimatorState extends State<EmojiDanceAnimator> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _bounce;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200))..repeat(reverse: true);
    _bounce = Tween<double>(begin: 0, end: -10).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.emojis.map((emoji) {
        return AnimatedBuilder(
          animation: _bounce,
          builder: (_, __) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Transform.translate(
              offset: Offset(0, _bounce.value),
              child: Text(emoji, style: const TextStyle(fontSize: 32)),
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
