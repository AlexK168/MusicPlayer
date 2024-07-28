import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:music_player/gen/assets.gen.dart';
import 'package:music_player/gen/fonts.gen.dart';
import 'package:music_player/gen/l10n.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove();
    });
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Assets.png.onboarding1.image(
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(33, 37, 33, 69),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                Text(
                  S.of(context).onboardingPageHeader,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: FontFamily.satoshi,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Text(
                  S.of(context).onboardingPageBody,
                  style: const TextStyle(
                    fontFamily: FontFamily.satoshi,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 31),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    backgroundColor: const Color(0xFF42C83C),
                  ),
                  child: Text(
                    S.of(context).onboardingPageGetStarted,
                    style: const TextStyle(
                      fontFamily: FontFamily.satoshi,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  onPressed: () {
                    context.go('/chooseMode');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
