import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.height,
  });

  final String imageUrl;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      width: 1.sw,
      height: height ?? 0.6.sh,
      placeholder: (_, __) => LoadingImage(height: height),
      errorWidget: (_, __, ___) => const ErrorImage(),
    );
  }
}
