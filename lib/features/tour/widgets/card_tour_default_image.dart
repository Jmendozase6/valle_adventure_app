import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';
import 'package:valle_adventure_app/features/tour/providers/providers.dart';

class CardTourImageDetails extends ConsumerWidget {
  final List<String> images;
  final String title, location;
  final int reviewsAmount;
  final double stars;

  const CardTourImageDetails({
    super.key,
    required this.images,
    required this.title,
    required this.location,
    required this.reviewsAmount,
    this.stars = 0,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentImage = ref.watch(currentImageProvider.notifier);
    final imageIndex = ref.watch(currentImageProvider);

    return SizedBox(
      height: 0.6.sh,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppConstants.defaultPadding),
            child: CustomCachedNetworkImage(imageUrl: images[imageIndex]),
          ),
          Container(
            height: 0.6.sh,
            decoration: BoxDecoration(
              color: AppColors.darkColor20,
              borderRadius: BorderRadius.circular(AppConstants.defaultPadding),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                currentImage.nextImage(images.length);
              },
              child: Container(
                height: 100.h,
                width: 100.h,
                margin: EdgeInsets.only(
                  right: AppConstants.defaultPaddingHorizontal * 0.7,
                  bottom: AppConstants.defaultPadding * 7,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
                  border: Border.all(
                    color: AppColors.whiteColor,
                    width: 2,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppConstants.defaultRadius),
                  ),
                  child: CustomCachedNetworkImage(
                    imageUrl: images[currentImage.imageIndexPlusOne],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 0.1.sh,
              padding: EdgeInsets.symmetric(
                horizontal: AppConstants.defaultPaddingHorizontal,
              ),
              decoration: BoxDecoration(
                color: AppColors.darkColor20,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppConstants.defaultPadding),
                  bottomRight: Radius.circular(AppConstants.defaultPadding),
                ),
              ),
              child: Row(
                children: [
                  CardTourTitle(
                    title: title,
                    location: location,
                    textColor: AppColors.whiteColor,
                  ),
                  const VerticalDivider(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '⭐️ $stars',
                        style: AppStyles.body(
                          color: AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(height: AppConstants.defaultPadding * 0.5),
                      Text(
                        '$reviewsAmount reseñas',
                        style: AppStyles.body(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
