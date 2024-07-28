import 'package:hive_flutter/adapters.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_notifier.g.dart';

@riverpod
class OnboardingNotifier extends _$OnboardingNotifier {
  late final Box<bool> _box;
  static const String _key = "onboardingBoxKey";
  static const String _boxName = "onboardingBoxName";

  @override
  FutureOr<bool> build() async {
    _box = await Hive.openBox(_boxName);
    final onboardingPassed = _box.get(_key);
    return onboardingPassed ?? false;
  }

  void passOnboarding() async {
    await _box.put(_key, true);
    final onboardingAlreadyPassed = await future;
    if (!onboardingAlreadyPassed) {
      state = const AsyncData(true);
    }
  }

  // used for testing
  void unPassOnboarding() async {
    await _box.put(_key, false);
    // final onboardingAlreadyPassed = await future;
    // if (!onboardingAlreadyPassed) {
    //   state = const AsyncData(true);
    // }
  }
}
