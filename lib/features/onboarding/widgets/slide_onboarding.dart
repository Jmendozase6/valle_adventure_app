import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/onboarding/providers/providers.dart';

class SlideOnboarding extends ConsumerWidget {
  const SlideOnboarding({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = ref.watch(currentPageProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CurrentOnboardingRect(isCurrent: 0 == page),
        CurrentOnboardingRect(isCurrent: 1 == page),
        CurrentOnboardingRect(isCurrent: 2 == page),
        CurrentOnboardingRect(isCurrent: 3 == page),
      ],
    );
  }
}

class CurrentOnboardingRect extends StatelessWidget {
  const CurrentOnboardingRect({super.key, required this.isCurrent});

  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 5.h,
      margin: EdgeInsets.only(right: 5.w),
      decoration: BoxDecoration(
        color: isCurrent ? AppColors.darkColor : AppColors.darkColor20,
        borderRadius: BorderRadius.circular(AppConstants.defaultRadius - 10),
      ),
    );
  }
}
