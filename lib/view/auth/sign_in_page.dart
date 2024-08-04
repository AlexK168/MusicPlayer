import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_player/gen/l10n.dart';
import 'package:music_player/view/auth/widgets/shared/auth_divider.dart';
import 'package:music_player/view/auth/widgets/shared/social_links.dart';
import 'package:music_player/view/auth/widgets/shared/support_link_widget.dart';
import 'package:music_player/view/auth/widgets/sign_in/password_form_field.dart';
import 'package:music_player/view/auth/widgets/sign_in/username_form_field.dart';
import 'package:music_player/viewmodel/sign_in_page_viewmodel.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formIsValid =
        context.select<SignInPageViewmodel, bool>((value) => value.valid);
    return Material(
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  S.of(context).signInPageHeader,
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
                const UsernameFormField(),
                const SizedBox(
                  height: 16,
                ),
                const PasswordFormField(),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    S.of(context).signInPagePasswordRecovery,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 64,
                  child: FilledButton(
                    onPressed: !formIsValid ? null : () {},
                    child: Text(
                      S.of(context).signInPageSignInButton,
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
                        text: "${S.of(context).signInPageRegisterLinkPrefix} ",
                        style: const TextStyle(
                          color: Color(0xFF383838),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "${S.of(context).signInPageRegisterLink} ",
                        style: const TextStyle(
                          color: Color(0xFF288CE9),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context.go('/register'),
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
