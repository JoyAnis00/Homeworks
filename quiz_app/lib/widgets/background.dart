import 'package:flutter/material.dart';
import 'package:quiz_app/constants/assets.dart';

class BackgroundWrapper extends StatelessWidget {
  final Widget child;

  const BackgroundWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            Assets.imagesGradent,
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(child: child),
      ],
    );
  }
}
