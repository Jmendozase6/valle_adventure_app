import 'package:flutter/material.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';

class UserDataRow extends StatelessWidget {
  const UserDataRow({
    super.key,
    required this.title,
    required this.value,
  });

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.defaultPaddingHorizontal,
        vertical: AppConstants.defaultPadding * 0.5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppStyles.heading04(fontWeight: FontWeight.normal),
          ),
          SizedBox(width: AppConstants.defaultPaddingHorizontal),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Chip(
                label: Text(
                  value,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
