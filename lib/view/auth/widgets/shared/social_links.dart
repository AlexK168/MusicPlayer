import 'package:flutter/material.dart';
import 'package:music_player/gen/assets.gen.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.icons.google.svg(),
        const SizedBox(
          width: 64,
        ),
        Assets.icons.apple.svg(),
      ],
    );
  }
}
