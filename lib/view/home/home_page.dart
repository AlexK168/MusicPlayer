import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_player/provider/onboarding_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove();
    });
    return Column(
      children: [
        const Text("Home page"),
        ElevatedButton(
          onPressed: () async {
            ref.read(onboardingNotifierProvider.notifier).unPassOnboarding();
          },
          child: const Text("unpass onboarding"),
        ),
      ],
    );
  }
}
