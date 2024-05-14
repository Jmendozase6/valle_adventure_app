import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/features/onboarding/providers/onboarding_provider.dart';
import 'package:valle_adventure_app/features/onboarding/widgets/widgets.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class OnboardingNavBar extends ConsumerWidget {
  const OnboardingNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(currentPageProvider);
    final pageController = ref.watch(pageControllerProvider);
    return Container(
      height: 0.2.sh,
      width: 1.sw,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultPadding),
      child: Column(
        children: [
          SizedBox(height: AppConstants.defaultPadding),
          const SlideOnboarding(),
          SizedBox(height: AppConstants.defaultPadding * 2),
          CtaButtonFilled(
            text: AppLocalizations.of(context)!.discover_places,
            onPressed: () {
              if (currentPage < 3) {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
                ref.read(currentPageProvider.notifier).update((state) => state + 1);
              } else {
                ref.read(setOnboardingProvider);
                ref.read(routerProvider).goNamed(AppRoutes.signIn.name);
              }
            },
          ),
          SizedBox(height: AppConstants.defaultPadding),
          AccountLink(
            text: AppLocalizations.of(context)!.have_account,
            ctaText: AppLocalizations.of(context)!.sign_in,
            route: AppRoutes.signIn.name,
          ),
        ],
      ),
    );
  }
}
