import 'package:cached_network_image/cached_network_image.dart';
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

    return Container(
      height: 0.6.sh,
      decoration: BoxDecoration(
        color: AppColors.darkColor20,
        borderRadius: BorderRadius.circular(AppConstants.defaultPadding),
        image: DecorationImage(
          image: CachedNetworkImageProvider(
            images[imageIndex],
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (images.length > 1)
            GestureDetector(
              onTap: () {
                currentImage.nextImage(images.length);
              },
              child: Container(
                height: 100.h,
                width: 100.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(
                  right: AppConstants.defaultPaddingHorizontal,
                  bottom: AppConstants.defaultPadding,
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
          Container(
            height: 0.1.sh,
            padding: EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPaddingHorizontal,
            ),
            decoration: BoxDecoration(
              color: AppColors.darkColor.withOpacity(0.5),
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
        ],
      ),
    );
  }
}
