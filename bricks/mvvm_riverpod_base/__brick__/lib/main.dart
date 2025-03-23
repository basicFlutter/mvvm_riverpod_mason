import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_riverpod_base/app/app.dart';
import 'package:mvvm_riverpod_base/core/theme/app_theme.dart';
import 'package:mvvm_riverpod_base/core/translations/app_translations.dart';
import 'package:mvvm_riverpod_base/core/theme/theme_provider.dart';
import 'package:mvvm_riverpod_base/core/language/language_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
    final themeData = ref.watch(themeDataProvider);
    final currentLocale = ref.watch(currentLocaleProvider);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MVVM Riverpod App',
          theme: themeData,
          darkTheme: themeData,
          themeMode: ThemeMode.system,
          locale: currentLocale,
          localizationsDelegates: const [
            AppTranslations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('fa'),
            Locale('en'),
          ],
          home: const App(),
        );
      },
    );
  }
} 