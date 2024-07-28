class RedirectState {
  final bool? onboardingPassed;
  final bool? authenticated;

  bool get initial => onboardingPassed == null && authenticated == null;

  RedirectState._({
    required this.onboardingPassed,
    required this.authenticated,
  });

  factory RedirectState.initial() {
    return RedirectState._(
      onboardingPassed: null,
      authenticated: false,
    );
  }

  factory RedirectState.withOnboarding(RedirectState state, bool value) {
    return RedirectState._(
      onboardingPassed: value,
      authenticated: state.authenticated,
    );
  }
}
