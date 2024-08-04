import 'package:formz/formz.dart';

enum EmailValidationError {
  empty,
  invalid,
  taken,
}

class RegisterEmailInput extends FormzInput<String, EmailValidationError> {
  const RegisterEmailInput.pure() : super.pure('');
  const RegisterEmailInput.dirty([super.value = '']) : super.dirty();

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationError? validator(String value) {
    if (value.isEmpty) {
      return EmailValidationError.empty;
    }
    if (!_emailRegExp.hasMatch(value)) {
      return EmailValidationError.invalid;
    }
    return null;
  }
}
