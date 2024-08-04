import 'package:music_player/riverpod/onboarding_notifier.dart';
import 'package:music_player/router/redirect_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'redirect_notifier.g.dart';

@riverpod
class RedirectNotifier extends _$RedirectNotifier {
  @override
  RedirectState build() {
    ref.listen(
      onboardingNotifierProvider,
      (prev, next) {
        if (next.hasValue && !next.isLoading) {
          state = RedirectState.withOnboarding(state, next.requireValue);
        }
      },
    );
    return RedirectState.initial();
  }
}
