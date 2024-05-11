import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class CardTourTitle extends StatelessWidget {
  const CardTourTitle({
    super.key,
    required this.title,
    required this.location,
    this.textColor,
  });

  final String title;
  final Color? textColor;
  final String location;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.5.sw,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.body(color: textColor),
          ),
          SizedBox(height: AppConstants.defaultPadding * 0.5),
          NameLocation(
            location: location,
            textColor: textColor,
          ),
        ],
      ),
    );
  }
}
