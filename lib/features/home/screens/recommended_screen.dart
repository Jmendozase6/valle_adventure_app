import 'package:flutter/material.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class RecommendedScreen extends StatelessWidget {
  const RecommendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkColor,
        iconTheme: IconThemeData(color: AppColors.whiteColor),
      ),
      body: const _RecommendedView(),
    );
  }
}

class _RecommendedView extends StatelessWidget {
  const _RecommendedView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Recommended'),
    );
  }
}
