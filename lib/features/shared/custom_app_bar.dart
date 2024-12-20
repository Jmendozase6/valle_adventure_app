import 'package:flutter/material.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
    this.centerTitle,
  });

  final String? title;
  final List<Widget>? actions;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.darkColor,
      iconTheme: IconThemeData(color: AppColors.whiteColor),
      centerTitle: centerTitle ?? true,
      title: Text(
        title ?? '',
        style: TextStyle(
          color: AppColors.whiteColor,
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
