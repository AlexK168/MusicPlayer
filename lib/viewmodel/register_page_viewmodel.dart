import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:music_player/model/register/register_email_input.dart';
import 'package:music_player/model/register/register_password_input.dart';
import 'package:music_player/model/register/register_username_input.dart';

class RegisterPageViewmodel extends ChangeNotifier {
  RegisterUsernameInput _username = const RegisterUsernameInput.pure();
  RegisterUsernameInput get username => _username;

  RegisterPasswordInput _password = const RegisterPasswordInput.pure();
  RegisterPasswordInput get password => _password;

  RegisterEmailInput _email = const RegisterEmailInput.pure();
  RegisterEmailInput get email => _email;

  bool _passwordVisible = false;
  bool get passwordVisible => _passwordVisible;

  bool _valid = false;
  bool get valid => _valid;

  void usernameChanged(String value) {
    _username = RegisterUsernameInput.dirty(value);
    _validateAllAndNotify();
  }

  void passwordChanged(String value) {
    _password = RegisterPasswordInput.dirty(value);
    _validateAllAndNotify();
  }

  void emailChanged(String value) {
    _email = RegisterEmailInput.dirty(value);
    _validateAllAndNotify();
  }

  void togglePasswordVisibility() {
    _passwordVisible = !_passwordVisible;
    notifyListeners();
  }

  void _validateAllAndNotify() {
    _valid = Formz.validate([_username, _password, _email]);
    notifyListeners();
  }
}
