import 'package:formz/formz.dart';

enum SignInUsernameValidationError {
  empty,
}

class SignInUsernameInput
    extends FormzInput<String, SignInUsernameValidationError> {
  const SignInUsernameInput.pure() : super.pure('');
  const SignInUsernameInput.dirty([super.value = '']) : super.dirty();

  @override
  SignInUsernameValidationError? validator(String value) {
    if (value.isEmpty) return SignInUsernameValidationError.empty;
    return null;
  }
}
