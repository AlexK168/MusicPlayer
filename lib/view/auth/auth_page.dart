import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:music_player/gen/assets.gen.dart';
import 'package:music_player/gen/fonts.gen.dart';
import 'package:music_player/gen/l10n.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove();
    });
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            right: 10,
            left: -10,
            bottom: -10,
            child: Assets.png.authPage.image(
              alignment: Alignment.bottomLeft,
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 32,
            right: 32,
            child: Align(
              alignment: const Alignment(0, -0.25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FractionallySizedBox(
                    widthFactor: 235 / (390 - 64),
                    child: Assets.svg.logo.svg(
                      fit: BoxFit.fitWidth,
                      clipBehavior: Clip.none,
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Text(
                    S.of(context).authPageHeader,
                    style: const TextStyle(
                      fontFamily: FontFamily.satoshi,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF383838),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    S.of(context).authPageBody,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: FontFamily.satoshi,
                      fontSize: 17,
                      color: Color(0xFF383838),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 148,
                        child: FilledButton(
                          onPressed: () => context.go('/register'),
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.all(22),
                          ),
                          child: Text(
                            S.of(context).authPageRegister,
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 148,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(22),
                          ),
                          onPressed: () => context.go('/sign_in'),
                          child: Text(
                            S.of(context).authPageSignIn,
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
