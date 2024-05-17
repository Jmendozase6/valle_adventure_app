import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valle_adventure_app/features/home/providers/bottom_nav_provider.dart';

class CustomBottomNavBar extends ConsumerWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentScreen = ref.watch(bottomNavProvider);
    final locale = AppLocalizations.of(context)!;
    return FlashyTabBar(
      selectedIndex: currentScreen,
      items: [
        FlashyTabBarItem(
          icon: const Icon(FontAwesomeIcons.house),
          title: Text(locale.home),
        ),
        FlashyTabBarItem(
          icon: const Icon(FontAwesomeIcons.magnifyingGlass),
          title: Text(locale.search),
        ),
        FlashyTabBarItem(
          icon: const Icon(FontAwesomeIcons.floppyDisk),
          title: Text(locale.saved),
        ),
        FlashyTabBarItem(
          icon: const Icon(FontAwesomeIcons.gear),
          title: Text(locale.settings),
        ),
      ],
      onItemSelected: (value) => ref.read(bottomNavProvider.notifier).state = value,
    );
  }
}
