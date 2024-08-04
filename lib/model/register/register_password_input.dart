import 'package:formz/formz.dart';

enum PasswordValidationError {
  empty,
  tooShort,
  noDigits,
  noSpecialChars,
}

class RegisterPasswordInput
    extends FormzInput<String, PasswordValidationError> {
  static const _minLength = 8;

  const RegisterPasswordInput.pure() : super.pure('');
  const RegisterPasswordInput.dirty([super.value = '']) : super.dirty();

  static final RegExp _hasDigitsRegExp = RegExp(r'\d');
  static final RegExp _hasSpecialCharsRegExp =
      RegExp(r'[!@#$%^&*(),.?":{}|<>]');

  @override
  PasswordValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return PasswordValidationError.empty;
    }
    if (!value.contains(_hasDigitsRegExp)) {
      return PasswordValidationError.noDigits;
    }
    if (!value.contains(_hasSpecialCharsRegExp)) {
      return PasswordValidationError.noSpecialChars;
    }
    if (value.length < _minLength) {
      return PasswordValidationError.tooShort;
    }
    return null;
  }
}
