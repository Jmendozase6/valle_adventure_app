import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/home/providers/bottom_nav_provider.dart';

class CustomBottomNavBar extends ConsumerWidget {
  const CustomBottomNavBar({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentScreen = ref.watch(bottomNavProvider);
    final locale = AppLocalizations.of(context)!;
    final router = ref.watch(routerProvider);
    return Scaffold(
      body: body,
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: currentScreen,
        showElevation: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        items: [
          FlashyTabBarItem(
            icon: const Icon(FontAwesomeIcons.house),
            title: Text(locale.home),
            activeColor: AppColors.darkColor,
            inactiveColor: AppColors.darkColor20,
          ),
          FlashyTabBarItem(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
            title: Text(locale.search),
            activeColor: AppColors.darkColor,
            inactiveColor: AppColors.darkColor20,
          ),
          FlashyTabBarItem(
            icon: const Icon(FontAwesomeIcons.user),
            title: Text(locale.profile),
            activeColor: AppColors.darkColor,
            inactiveColor: AppColors.darkColor20,
          ),
          FlashyTabBarItem(
            icon: const Icon(FontAwesomeIcons.heart),
            title: Text(locale.saved),
            activeColor: AppColors.darkColor,
            inactiveColor: AppColors.darkColor20,
          ),
        ],
        onItemSelected: (value) {
          if (value == currentScreen) return;
          ref.read(bottomNavProvider.notifier).state = value;
          switch (value) {
            case 0:
              router.goNamed(AppRoutes.home.name);
              break;
            case 1:
              router.goNamed(AppRoutes.search.name);
              break;
            case 2:
              router.goNamed(AppRoutes.profile.name);
              break;
            case 3:
              router.goNamed(AppRoutes.saved.name);
              break;
          }
        },
      ),
    );
  }
}
