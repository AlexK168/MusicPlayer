import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:music_player/gen/fonts.gen.dart';
import 'package:music_player/gen/l10n.dart';
import 'package:music_player/router/router_provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:music_player/viewmodel/register_page_viewmodel.dart';
import 'package:music_player/viewmodel/sign_in_page_viewmodel.dart';
import 'package:provider/provider.dart' as p;

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Hive.initFlutter();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return p.MultiProvider(
      providers: [
        p.ChangeNotifierProvider(
          create: (context) => SignInPageViewmodel(),
        ),
        p.ChangeNotifierProvider(
          create: (context) => RegisterPageViewmodel(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF42C83C),
          ),
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              borderSide: BorderSide(
                color: Color(0xFF42C83C),
              ),
            ),
            //isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          fontFamily: FontFamily.satoshi,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            centerTitle: true,
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF313131),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
          ),
          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              backgroundColor: const Color(0xFF42C83C),
            ),
          ),
          useMaterial3: true,
        ),
        routerConfig: router,
        localizationsDelegates: const [
          S.delegate,
          ...GlobalMaterialLocalizations.delegates,
        ],
      ),
    );
  }
}
