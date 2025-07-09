import 'package:flutter/material.dart';

class AvatarGlowTrail extends StatelessWidget {
  final Widget avatar;
  final Color trailColor;
  const AvatarGlowTrail({super.key, required this.avatar, required this.trailColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 10,
          child: Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [trailColor.withOpacity(0.4), Colors.transparent],
              ),
            ),
          ),
        ),
        avatar,
      ],
    );
  }
}
