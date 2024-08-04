import 'package:flutter/material.dart';
import 'package:music_player/gen/l10n.dart';
import 'package:music_player/model/register/register_password_input.dart';
import 'package:music_player/view/auth/widgets/shared/base_form_field.dart';
import 'package:music_player/viewmodel/register_page_viewmodel.dart';
import 'package:provider/provider.dart';

class RegisterPasswordFormField extends StatelessWidget {
  const RegisterPasswordFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<RegisterPageViewmodel>();
    final input = context.select<RegisterPageViewmodel, RegisterPasswordInput>(
      (value) => value.password,
    );
    final passwordVisible = context.select<RegisterPageViewmodel, bool>(
      (value) => value.passwordVisible,
    );
    return BaseFormField(
      onChanged: viewModel.passwordChanged,
      labelText: S.of(context).registerPagePasswordPlaceholder,
      errorText: errorFromInput(context, input),
      text: viewModel.password.value,
      obscureText: !passwordVisible,
      suffixIcon:
          Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
      onSuffixPressed: viewModel.togglePasswordVisibility,
      inputType: TextInputType.visiblePassword,
    );
  }

  String? errorFromInput(BuildContext context, RegisterPasswordInput input) {
    if (input.isPure) return null;
    final error = input.error;
    if (error == null) return null;
    switch (error) {
      case PasswordValidationError.empty:
        return S.of(context).passwordEmpty;
      case PasswordValidationError.tooShort:
        return S.of(context).passwordTooShort;
      case PasswordValidationError.tooLong:
        return S.of(context).passwordTooLong;
      case PasswordValidationError.noDigits:
        return S.of(context).passwordNoDigits;
      case PasswordValidationError.noSpecialChars:
        return S.of(context).passwordNoSpecChars;
    }
  }
}
