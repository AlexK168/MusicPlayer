import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_player/gen/assets.gen.dart';
import 'package:music_player/gen/l10n.dart';
import 'package:music_player/view/auth/shared/auth_divider.dart';
import 'package:music_player/view/auth/shared/support_link_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.black.withOpacity(0.04),
          ),
          icon: Assets.icons.arrowLeft.svg(
            height: 24,
            width: 24,
          ),
          onPressed: () => context.go('/auth'),
        ),
        title: Assets.svg.logo.svg(
          height: 33,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(
              flex: 4,
            ),
            Text(
              S.of(context).signInPageHeader,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            const SupportLinkWidget(),
            const Spacer(
              flex: 28,
            ),
            Text(
              S.of(context).signInPagePasswordRecovery,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            SizedBox(
              height: 64,
              child: FilledButton(
                onPressed: () {},
                child: Text(
                  S.of(context).signInPageSignInButton,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            const AuthDivider(),
            const Spacer(
              flex: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.google.svg(),
                const SizedBox(
                  width: 64,
                ),
                Assets.icons.apple.svg(),
              ],
            ),
            const Spacer(
              flex: 5,
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
            const Spacer(
              flex: 6,
            ),
          ],
        ),
      ),
    );
  }
}
