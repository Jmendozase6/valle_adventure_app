import 'package:flutter/material.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class EmptyListView extends StatelessWidget {
  const EmptyListView({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.favorite_border,
            size: 40,
            color: AppColors.mainColor,
          ),
          const SizedBox(height: 20),
          Text(
            message,
          ),
        ],
      ),
    );
  }
}
