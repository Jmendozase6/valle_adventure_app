import 'package:flutter/material.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkColor,
        iconTheme: IconThemeData(color: AppColors.whiteColor),
      ),
      body: const _PopularView(),
    );
  }
}

class _PopularView extends StatelessWidget {
  const _PopularView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Popular'),
    );
  }
}
