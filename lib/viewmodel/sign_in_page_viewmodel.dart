import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:music_player/model/sign_in/sign_in_password_input.dart';
import 'package:music_player/model/sign_in/sign_in_username_input.dart';

class SignInPageViewmodel extends ChangeNotifier {
  SignInUsernameInput _username = const SignInUsernameInput.pure();
  SignInUsernameInput get username => _username;

  SignInPasswordInput _password = const SignInPasswordInput.pure();
  SignInPasswordInput get password => _password;

  bool _passwordVisible = false;
  bool get passwordVisible => _passwordVisible;

  bool _valid = false;
  bool get valid => _valid;

  void usernameChanged(String value) {
    _username = SignInUsernameInput.dirty(value);
    _valid = Formz.validate([_username, _password]);
    notifyListeners();
  }

  void passwordChanged(String value) {
    _password = SignInPasswordInput.dirty(value);
    _valid = Formz.validate([_username, _password]);
    notifyListeners();
  }

  void togglePasswordVisibility() {
    _passwordVisible = !_passwordVisible;
    notifyListeners();
  }
}
