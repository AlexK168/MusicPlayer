// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `BooPlayer`
  String get appName {
    return Intl.message(
      'BooPlayer',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy Listening To Music`
  String get onboardingPageHeader {
    return Intl.message(
      'Enjoy Listening To Music',
      name: 'onboardingPageHeader',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.`
  String get onboardingPageBody {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
      name: 'onboardingPageBody',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onboardingPageGetStarted {
    return Intl.message(
      'Get Started',
      name: 'onboardingPageGetStarted',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get themePageDarkMode {
    return Intl.message(
      'Dark Mode',
      name: 'themePageDarkMode',
      desc: '',
      args: [],
    );
  }

  /// `Light Mode`
  String get themePageLightMode {
    return Intl.message(
      'Light Mode',
      name: 'themePageLightMode',
      desc: '',
      args: [],
    );
  }

  /// `Choose Mode`
  String get themePageChooseMode {
    return Intl.message(
      'Choose Mode',
      name: 'themePageChooseMode',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get themePageContinue {
    return Intl.message(
      'Continue',
      name: 'themePageContinue',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy Listening To Music`
  String get authPageHeader {
    return Intl.message(
      'Enjoy Listening To Music',
      name: 'authPageHeader',
      desc: '',
      args: [],
    );
  }

  /// `Spotify is a proprietary Swedish audio streaming and media services provider`
  String get authPageBody {
    return Intl.message(
      'Spotify is a proprietary Swedish audio streaming and media services provider',
      name: 'authPageBody',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get authPageRegister {
    return Intl.message(
      'Register',
      name: 'authPageRegister',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get authPageSignIn {
    return Intl.message(
      'Sign in',
      name: 'authPageSignIn',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signInPageHeader {
    return Intl.message(
      'Sign In',
      name: 'signInPageHeader',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signInPageSignInButton {
    return Intl.message(
      'Sign In',
      name: 'signInPageSignInButton',
      desc: '',
      args: [],
    );
  }

  /// `Enter Username`
  String get signInPageUsernamePlaceholder {
    return Intl.message(
      'Enter Username',
      name: 'signInPageUsernamePlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get signInPagePasswordPlaceholder {
    return Intl.message(
      'Password',
      name: 'signInPagePasswordPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Your Password?`
  String get signInPagePasswordRecovery {
    return Intl.message(
      'Forgot Your Password?',
      name: 'signInPagePasswordRecovery',
      desc: '',
      args: [],
    );
  }

  /// `Not A Member?`
  String get signInPageRegisterLinkPrefix {
    return Intl.message(
      'Not A Member?',
      name: 'signInPageRegisterLinkPrefix',
      desc: '',
      args: [],
    );
  }

  /// `Register Now`
  String get signInPageRegisterLink {
    return Intl.message(
      'Register Now',
      name: 'signInPageRegisterLink',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registerPageHeader {
    return Intl.message(
      'Register',
      name: 'registerPageHeader',
      desc: '',
      args: [],
    );
  }

  /// `If You Need Any Support`
  String get registerPageSupportLinkPrefix {
    return Intl.message(
      'If You Need Any Support',
      name: 'registerPageSupportLinkPrefix',
      desc: '',
      args: [],
    );
  }

  /// `Click Here`
  String get registerPageSupportLink {
    return Intl.message(
      'Click Here',
      name: 'registerPageSupportLink',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get registerPageFullNamePlaceholder {
    return Intl.message(
      'Full Name',
      name: 'registerPageFullNamePlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Enter Email`
  String get registerPageEmailPlaceholder {
    return Intl.message(
      'Enter Email',
      name: 'registerPageEmailPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get registerPagePasswordPlaceholder {
    return Intl.message(
      'Password',
      name: 'registerPagePasswordPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get registerPageCreateAccountButton {
    return Intl.message(
      'Create Account',
      name: 'registerPageCreateAccountButton',
      desc: '',
      args: [],
    );
  }

  /// `Do you have any account?`
  String get registerPageSignInLinkPrefix {
    return Intl.message(
      'Do you have any account?',
      name: 'registerPageSignInLinkPrefix',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get registerPageSignInLink {
    return Intl.message(
      'Sign In',
      name: 'registerPageSignInLink',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `If You Need Any Support`
  String get supportLinkPrefix {
    return Intl.message(
      'If You Need Any Support',
      name: 'supportLinkPrefix',
      desc: '',
      args: [],
    );
  }

  /// `Click Here`
  String get supportLink {
    return Intl.message(
      'Click Here',
      name: 'supportLink',
      desc: '',
      args: [],
    );
  }

  /// `Email is invalid`
  String get emailInvalid {
    return Intl.message(
      'Email is invalid',
      name: 'emailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Email is empty`
  String get emailEmpty {
    return Intl.message(
      'Email is empty',
      name: 'emailEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Email is taken`
  String get emailTaken {
    return Intl.message(
      'Email is taken',
      name: 'emailTaken',
      desc: '',
      args: [],
    );
  }

  /// `Username is empty`
  String get usernameEmpty {
    return Intl.message(
      'Username is empty',
      name: 'usernameEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Username is taken`
  String get usernameTaken {
    return Intl.message(
      'Username is taken',
      name: 'usernameTaken',
      desc: '',
      args: [],
    );
  }

  /// `Username is too short`
  String get usernameTooShort {
    return Intl.message(
      'Username is too short',
      name: 'usernameTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Username is too long`
  String get usernameTooLong {
    return Intl.message(
      'Username is too long',
      name: 'usernameTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Password is empty`
  String get passwordEmpty {
    return Intl.message(
      'Password is empty',
      name: 'passwordEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Password has no special characters`
  String get passwordNoSpecChars {
    return Intl.message(
      'Password has no special characters',
      name: 'passwordNoSpecChars',
      desc: '',
      args: [],
    );
  }

  /// `Password has no digits`
  String get passwordNoDigits {
    return Intl.message(
      'Password has no digits',
      name: 'passwordNoDigits',
      desc: '',
      args: [],
    );
  }

  /// `Password is too short`
  String get passwordTooShort {
    return Intl.message(
      'Password is too short',
      name: 'passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Password is too long`
  String get passwordTooLong {
    return Intl.message(
      'Password is too long',
      name: 'passwordTooLong',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'be'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
