import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class CardTour extends StatelessWidget {
  final String imageUrl, title, location;
  final double price;
  final bool isLiked;

  const CardTour({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.price,
    required this.isLiked,
  });

  @override
  Widget build(BuildContext context) {
    final borderSide = BorderSide(
      color: AppColors.darkColor20,
    );
    return SizedBox(
      height: 0.25.sh,
      child: Stack(
        children: [
          _CardTourImage(imageUrl: imageUrl),
          Align(
            alignment: Alignment.topRight,
            child: ButtonLike(isLiked: isLiked, onPressed: () {}),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 0.08.sh,
              padding: EdgeInsets.symmetric(
                horizontal: AppConstants.defaultPaddingHorizontal,
              ),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppConstants.defaultRadius),
                  bottomRight: Radius.circular(AppConstants.defaultRadius),
                ),
                border: Border(
                  left: borderSide,
                  right: borderSide,
                  bottom: borderSide,
                ),
              ),
              child: Row(
                children: [
                  CardTourTitle(title: title, location: location),
                  const VerticalDivider(),
                  _CardTourPrice(price: price),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CardTourPrice extends StatelessWidget {
  const _CardTourPrice({
    required this.price,
  });

  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'S/. $price',
          style: AppStyles.subtitle(color: AppColors.mainColor),
        ),
        SizedBox(height: AppConstants.defaultPadding * 0.5),
        Text(
          'Por persona',
          style: AppStyles.body(),
        ),
      ],
    );
  }
}

class _CardTourImage extends StatelessWidget {
  const _CardTourImage({
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
      child: CustomCachedNetworkImage(
        imageUrl: imageUrl,
      ),
    );
  }
}
