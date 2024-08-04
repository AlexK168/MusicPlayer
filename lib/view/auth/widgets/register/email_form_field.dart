import 'package:flutter/material.dart';
import 'package:music_player/gen/l10n.dart';
import 'package:music_player/model/register/register_email_input.dart';
import 'package:music_player/view/auth/widgets/shared/base_form_field.dart';
import 'package:music_player/viewmodel/register_page_viewmodel.dart';
import 'package:provider/provider.dart';

class RegisterEmailFormField extends StatelessWidget {
  const RegisterEmailFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<RegisterPageViewmodel>();
    final input = context.select<RegisterPageViewmodel, RegisterEmailInput>(
      (value) => value.email,
    );
    return BaseFormField(
      text: input.value,
      onChanged: viewModel.emailChanged,
      labelText: S.of(context).registerPageEmailPlaceholder,
      errorText: errorFromInput(context, input),
      inputType: TextInputType.emailAddress,
    );
  }

  String? errorFromInput(BuildContext context, RegisterEmailInput input) {
    if (input.isPure) return null;
    final error = input.error;
    if (error == null) return null;
    switch (error) {
      case EmailValidationError.empty:
        return S.of(context).emailEmpty;
      case EmailValidationError.invalid:
        return S.of(context).emailInvalid;
      case EmailValidationError.taken:
        return S.of(context).emailTaken;
    }
  }
}
