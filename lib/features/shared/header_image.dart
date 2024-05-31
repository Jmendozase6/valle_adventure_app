import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_assets.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.3.sh,
      width: double.infinity,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(AppAssets.signInHeaderBg),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(AppConstants.defaultRadius * 2),
          bottomRight: Radius.circular(AppConstants.defaultRadius * 2),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: AppStyles.heading02(color: AppColors.yellowColor),
          ),
          Text(
            subtitle,
            style: AppStyles.heading04(color: AppColors.whiteColor),
          ),
          SizedBox(height: AppConstants.defaultPadding * 2),
        ],
      ),
    );
  }
}
