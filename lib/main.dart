import 'package:flutter/material.dart';

// Config Portraits
import 'package:flutter/services.dart';

// Localization
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// State management
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/auth_repository_provider.dart';
import 'package:valle_adventure_app/features/settings/presentation/providers/providers.dart';

// Responsive
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Environment variables
import 'package:flutter_dotenv/flutter_dotenv.dart';

// Router
import 'package:valle_adventure_app/core/config/router/app_router.dart';

// Theme
import 'package:valle_adventure_app/core/config/theme/app_theme.dart';

// Supabase
import 'package:valle_adventure_app/features/supabase/supabase_service.dart';

// Firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await SupabaseService.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await ScreenUtil.ensureScreenSize();
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
    final locale = ref.watch(localeProvider);
    ref.read(authRepositoryProvider).authStateChanges(router: router);

    return ScreenUtilInit(
      // designSize: const Size(428, 926),
      builder: (_, __) => MaterialApp.router(
        routerConfig: router,
        title: 'Valle Adventure',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: AppTheme.lightTheme,
        locale: locale,
      ),
    );
  }
}
