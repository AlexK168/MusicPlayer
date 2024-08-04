import 'package:flutter/material.dart';
import 'package:music_player/model/sign_in/sign_in_password_input.dart';
import 'package:music_player/gen/l10n.dart';
import 'package:music_player/view/auth/widgets/shared/base_form_field.dart';
import 'package:music_player/viewmodel/sign_in_page_viewmodel.dart';
import 'package:provider/provider.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<SignInPageViewmodel>();
    final input = context.select<SignInPageViewmodel, SignInPasswordInput>(
      (value) => value.password,
    );
    final passwordVisible = context.select<SignInPageViewmodel, bool>(
      (value) => value.passwordVisible,
    );
    return BaseFormField(
      text: input.value,
      onChanged: viewModel.passwordChanged,
      inputType: TextInputType.visiblePassword,
      obscureText: !passwordVisible,
      labelText: S.of(context).signInPagePasswordPlaceholder,
      errorText: errorFromInput(context, input),
      suffixIcon:
          Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
      onSuffixPressed: viewModel.togglePasswordVisibility,
    );
  }

  String? errorFromInput(BuildContext context, SignInPasswordInput input) {
    if (input.isPure) return null;
    final error = input.error;
    if (error == null) return null;
    switch (error) {
      case SignInPasswordValidationError.empty:
        return S.of(context).passwordEmpty;
    }
  }
}
