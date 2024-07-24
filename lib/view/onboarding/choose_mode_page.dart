import 'package:flutter/material.dart';
import 'package:music_player/gen/assets.gen.dart';
import 'package:music_player/gen/fonts.gen.dart';
import 'package:music_player/gen/l10n.dart';
import 'package:music_player/view/onboarding/widgets/mode_button.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Assets.png.chooseMode.image(
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(33, 37, 33, 69),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                Text(
                  S.of(context).themePageChooseMode,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: FontFamily.satoshi,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 31,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ModeButton(
                      svgAssetString: Assets.svg.moon.path,
                      onTap: () {},
                      label: S.of(context).themePageDarkMode,
                    ),
                    ModeButton(
                      svgAssetString: Assets.svg.sun.path,
                      onTap: () {},
                      label: S.of(context).themePageLightMode,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 68,
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 31),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    backgroundColor: const Color(0xFF42C83C),
                  ),
                  child: Text(
                    S.of(context).themePageContinue,
                    style: const TextStyle(
                      fontFamily: FontFamily.satoshi,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  onPressed: () => {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
