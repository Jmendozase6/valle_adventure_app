import 'package:flutter/material.dart';

// Localization
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// State management
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Environment variables
import 'package:flutter_dotenv/flutter_dotenv.dart';

// Router
import 'package:valle_adventure_app/core/config/router/app_router.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
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
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (_, __) => MaterialApp.router(
        routerConfig: router,
        title: 'Valle Adventure',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
