import 'package:flutter/material.dart';

class EmojiDanceDisplay extends StatelessWidget {
  final String emojiSequence;
  const EmojiDanceDisplay({super.key, required this.emojiSequence});

  @override
  Widget build(BuildContext context) {
    return Text(
      emojiSequence,
      style: const TextStyle(fontSize: 32),
      textAlign: TextAlign.center,
    );
  }
}
