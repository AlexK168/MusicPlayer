import 'package:flutter/material.dart';
import 'package:music_player/gen/l10n.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFB0B0B0),
                  Color(0xFFD3D3D3),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          S.of(context).or,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Container(
            height: 1,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  Color(0xFFB0B0B0),
                  Color(0xFFD3D3D3),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
