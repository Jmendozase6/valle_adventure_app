import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class ButtonLike extends StatelessWidget {
  final bool isLiked;
  final VoidCallback onPressed;
  const ButtonLike({super.key, required this.isLiked, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.all(AppConstants.defaultPadding),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        maxRadius: AppConstants.defaultRadius * 2,
        child: IconButton(
          onPressed: onPressed,
          icon: isLiked
              ? const FaIcon(FontAwesomeIcons.solidHeart, color: AppColors.redColor)
              : FaIcon(
                  FontAwesomeIcons.heart,
                  color: AppColors.darkColor20,
                ),
        ),
      ),
    );
  }
}
