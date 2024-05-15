import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_assets.dart';

class LoadingImage extends StatelessWidget {
  const LoadingImage({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.placeholderSquare,
      fit: BoxFit.cover,
      width: 1.sw,
      height: height ?? 0.6.sh,
    );
  }
}
