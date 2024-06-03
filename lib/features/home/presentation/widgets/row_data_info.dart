import 'package:flutter/material.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class RowDataInfo extends StatelessWidget {
  const RowDataInfo({
    super.key,
    required this.title,
    required this.value,
    this.fontWeightTitle,
  });

  final String title, value;
  final FontWeight? fontWeightTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.defaultPadding,
        vertical: AppConstants.defaultPadding * 0.5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppStyles.heading04(
              color: AppColors.darkColor.withOpacity(0.5),
              fontWeight: fontWeightTitle ?? FontWeight.normal,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                value,
                style: AppStyles.heading04(
                  color: AppColors.darkColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
