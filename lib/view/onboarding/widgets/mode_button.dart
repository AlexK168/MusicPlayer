import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_player/gen/fonts.gen.dart';

class ModeButton extends StatelessWidget {
  final String svgAssetString;
  final String label;
  final void Function() onTap;
  const ModeButton({
    super.key,
    required this.svgAssetString,
    required this.onTap,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox.square(
          dimension: 73,
          child: ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.white.withOpacity(0.01)),
                child: SvgPicture.asset(
                  svgAssetString,
                  width: 36,
                  height: 36,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          label,
          style: const TextStyle(
            fontFamily: FontFamily.satoshi,
            fontSize: 17,
            fontWeight: FontWeight.normal,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}
