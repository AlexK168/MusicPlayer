import 'package:flutter/material.dart';
import 'package:music_player/gen/l10n.dart';
import 'package:music_player/model/register/register_username_input.dart';
import 'package:music_player/view/auth/widgets/shared/base_form_field.dart';
import 'package:music_player/viewmodel/register_page_viewmodel.dart';
import 'package:provider/provider.dart';

class RegisterUsernameFormField extends StatelessWidget {
  const RegisterUsernameFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<RegisterPageViewmodel>();
    final input = context.select<RegisterPageViewmodel, RegisterUsernameInput>(
      (value) => value.username,
    );
    return BaseFormField(
      text: input.value,
      onChanged: viewModel.usernameChanged,
      labelText: S.of(context).registerPageFullNamePlaceholder,
      errorText: errorFromInput(context, input),
      inputType: TextInputType.name,
    );
  }

  String? errorFromInput(BuildContext context, RegisterUsernameInput input) {
    if (input.isPure) return null;
    final error = input.error;
    if (error == null) return null;
    switch (error) {
      case UsernameValidationError.tooShort:
        return S.of(context).usernameTooShort;
      case UsernameValidationError.empty:
        return S.of(context).usernameEmpty;
      case UsernameValidationError.taken:
        return S.of(context).usernameTaken;
      case UsernameValidationError.tooLong:
        return S.of(context).usernameTooLong;
    }
  }
}
