import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_player/gen/l10n.dart';
import 'package:music_player/view/auth/widgets/register/email_form_field.dart';
import 'package:music_player/view/auth/widgets/register/password_form_field.dart';
import 'package:music_player/view/auth/widgets/register/username_form_field.dart';
import 'package:music_player/view/auth/widgets/shared/social_links.dart';
import 'package:music_player/viewmodel/register_page_viewmodel.dart';
import 'package:provider/provider.dart';

import 'widgets/shared/auth_divider.dart';
import 'widgets/shared/support_link_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formIsValid =
        context.select<RegisterPageViewmodel, bool>((value) => value.valid);
    return Material(
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  S.of(context).registerPageHeader,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SupportLinkWidget(),
                const SizedBox(
                  height: 24,
                ),
                const RegisterUsernameFormField(),
                const RegisterEmailFormField(),
                const RegisterPasswordFormField(),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 64,
                  child: FilledButton(
                    onPressed: !formIsValid ? null : () {},
                    child: Text(
                      S.of(context).registerPageCreateAccountButton,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const AuthDivider(),
                const SizedBox(
                  height: 32,
                ),
                const SocialLinks(),
                const SizedBox(
                  height: 32,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${S.of(context).registerPageSignInLinkPrefix} ",
                        style: const TextStyle(
                          color: Color(0xFF383838),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "${S.of(context).registerPageSignInLink} ",
                        style: const TextStyle(
                          color: Color(0xFF288CE9),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context.go('/sign_in'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
