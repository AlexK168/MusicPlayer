import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_player/router/redirect_notifier.dart';
import 'package:music_player/view/auth/auth_page.dart';
import 'package:music_player/view/home/home_page.dart';
import 'package:music_player/view/onboarding/choose_mode_page.dart';
import 'package:music_player/view/onboarding/onboarding_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

@riverpod
GoRouter router(RouterRef ref) {
  final redirectState = ref.watch(redirectNotifierProvider);
  final onboardingPassed = redirectState.onboardingPassed;
  final authenticated = redirectState.authenticated;
  return GoRouter(
    navigatorKey: _key,
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: '/chooseMode',
        builder: (context, state) => const ChooseModePage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/auth',
        builder: (context, state) => const AuthPage(),
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SizedBox(),
      ),
    ],
    redirect: (context, state) {
      if (state.uri.path.contains('splash')) {
        if (onboardingPassed == null) {
          return null;
        }

        if (!onboardingPassed) {
          return "/onboarding";
        }

        if (authenticated == null) {
          return null;
        }

        return authenticated ? "/home" : "/auth";
      }
      return null;
    },
  );
}
