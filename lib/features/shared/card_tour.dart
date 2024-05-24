import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/providers.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class CardTour extends ConsumerWidget {
  final String id, imageUrl, title, location;
  final double price;
  final bool isLiked;

  const CardTour({
    super.key,
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.price,
    required this.isLiked,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(authRepositoryProvider);
    final borderSide = BorderSide(
      color: AppColors.darkColor20,
    );
    return ZoomIn(
      child: GestureDetector(
        onTap: () => ref.read(routerProvider).pushNamed(
          AppRoutes.placeDetails.name,
          pathParameters: {'id': id},
        ),
        child: Container(
          height: 0.25.sh,
          margin: EdgeInsets.only(bottom: AppConstants.defaultPadding),
          child: Stack(
            children: [
              _CardTourImage(imageUrl: imageUrl),
              Align(
                alignment: Alignment.topRight,
                child: ButtonLike(
                    isLiked: isLiked,
                    onPressed: () {
                      if (authProvider.isAuthenticated()) {
                        //TODO: Implement like functionality
                      } else {
                        ///TODO: Show a dialog to login
                        // TODO: Translate
                        const snackBar = SnackBar(
                          content: Text('Inicia sesión para guardar este tour'),
                        );
                        ScaffoldMessenger.of(context).clearSnackBars();
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 0.08.sh,
                  padding: EdgeInsets.symmetric(
                    horizontal: AppConstants.defaultPaddingHorizontal,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppConstants.defaultRadius),
                      bottomRight: Radius.circular(AppConstants.defaultRadius),
                    ),
                    border: Border(
                      left: borderSide,
                      right: borderSide,
                      bottom: borderSide,
                    ),
                  ),
                  child: Row(
                    children: [
                      CardTourTitle(title: title, location: location),
                      const VerticalDivider(),
                      _CardTourPrice(price: price),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardTourPrice extends StatelessWidget {
  const _CardTourPrice({
    required this.price,
  });

  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'S/. $price',
          style: AppStyles.subtitle(color: AppColors.mainColor),
        ),
        SizedBox(height: AppConstants.defaultPadding * 0.5),
        Text(
          AppLocalizations.of(context)!.by_person,
          style: AppStyles.body(),
        ),
      ],
    );
  }
}

class _CardTourImage extends StatelessWidget {
  const _CardTourImage({
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
      child: CustomCachedNetworkImage(
        imageUrl: imageUrl,
      ),
    );
  }
}
