import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_assets.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/onboarding/presentation/providers/onboarding_provider.dart';
import 'package:valle_adventure_app/features/onboarding/presentation/widgets/widgets.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: _OnboardingView(),
      bottomNavigationBar: const OnboardingNavBar(),
    );
  }
}

class _OnboardingView extends ConsumerWidget {
  _OnboardingView();

  final images = [
    AppAssets.onboarding01,
    AppAssets.onboarding02,
    AppAssets.onboarding03,
    AppAssets.onboarding04,
  ];
  final titles = [
    'Somos Valle Adventure',
    'Agencia de viajes a nivel nacional',
    'Contáctanos para tu próximo viaje',
    'Presentes en cada evento o festividad',
  ];
  final subtitles = [
    'Conociendo lo maravilloso de nuestro Perú, viaja con nosotros en una aventura que nunca olvidarás.',
    'Con una amplia trayectoria a nivel nacional, nos respalda la opinión de nuestros clientes.',
    'Visualiza nuestros destinos turísticos, realiza reservas y conoce información sobre tu próximo viaje.',
    'Conoce pueblitos Mágicos y aldeas pequeñas con encantos y rincones únicos.'
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);
    return PageView.builder(
      itemCount: images.length,
      controller: pageController,
      onPageChanged: (value) {
        ref.read(currentPageProvider.notifier).update((state) => value);
      },
      itemBuilder: (context, index) => _OnboardingSlide(
        title: titles[index],
        subtitle: subtitles[index],
        image: images[index],
      ),
    );
  }
}

class _OnboardingSlide extends StatelessWidget {
  const _OnboardingSlide({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final String title, subtitle, image;

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 0.1.sh),
            Text(
              title,
              style: AppStyles.heading01(color: AppColors.whiteColor),
            ),
            Text(
              subtitle,
              style: AppStyles.heading02(),
            ),
          ],
        ),
      ),
    );
  }
}
