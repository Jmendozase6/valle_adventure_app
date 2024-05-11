import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/tour/widgets/widgets.dart';
import 'package:valle_adventure_app/features/shared/card_tour.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Padding(
              padding: REdgeInsets.all(AppConstants.defaultPaddingHorizontal),
              child: Column(
                children: [
                  const CardTour(
                    imageUrl: 'https://picsum.photos/1000',
                    title: 'Montaña',
                    location: 'Piura',
                    price: 1,
                    isLiked: true,
                  ),
                  SizedBox(height: 20.h),
                  const CardTourImageDetails(
                    images: [
                      'https://placehold.co/400x300/orange/red/png',
                      'https://placehold.co/400x300/purple/red/png',
                      'https://placehold.co/400x300/blue/red/png',
                    ],
                    title: 'Montaña Bravo',
                    location: 'Piura',
                    reviewsAmount: 0,
                    stars: 0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
