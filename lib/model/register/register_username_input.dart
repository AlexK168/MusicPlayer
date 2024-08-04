import 'package:formz/formz.dart';

enum UsernameValidationError {
  empty,
  taken,
  tooLong,
  tooShort,
}

class RegisterUsernameInput
    extends FormzInput<String, UsernameValidationError> {
  const RegisterUsernameInput.pure() : super.pure('');
  const RegisterUsernameInput.dirty([super.value = '']) : super.dirty();

  @override
  UsernameValidationError? validator(String value) {
    if (value.isEmpty) {
      return UsernameValidationError.empty;
    }
    if (value.length > 20) {
      return UsernameValidationError.tooLong;
    }
    if (value.length < 3) {
      return UsernameValidationError.tooShort;
    }
    return null;
  }
}
