import 'package:flutter/material.dart';
import 'package:music_player/model/sign_in/sign_in_username_input.dart';
import 'package:music_player/gen/l10n.dart';
import 'package:music_player/view/auth/widgets/shared/base_form_field.dart';
import 'package:music_player/viewmodel/sign_in_page_viewmodel.dart';
import 'package:provider/provider.dart';

class UsernameFormField extends StatelessWidget {
  const UsernameFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<SignInPageViewmodel>();
    final input = context.select<SignInPageViewmodel, SignInUsernameInput>(
      (value) => value.username,
    );
    return BaseFormField(
      onChanged: viewModel.usernameChanged,
      text: viewModel.username.value,
      labelText: S.of(context).signInPageUsernamePlaceholder,
      errorText: errorFromInput(context, input),
      inputType: TextInputType.name,
    );
  }

  String? errorFromInput(BuildContext context, SignInUsernameInput input) {
    if (input.isPure) return null;
    final error = input.error;
    if (error == null) return null;
    switch (error) {
      case SignInUsernameValidationError.empty:
        return S.of(context).usernameEmpty;
    }
  }
}
