import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:music_player/gen/l10n.dart';

class SupportLinkWidget extends StatelessWidget {
  const SupportLinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "${S.of(context).supportLinkPrefix} ",
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Color(0xFF383838),
            ),
          ),
          TextSpan(
            text: S.of(context).supportLink,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Color(0xFF38B432),
            ),
            recognizer: TapGestureRecognizer()..onTap = onSupportTap,
          ),
        ],
      ),
    );
  }

  void onSupportTap() {}
}
