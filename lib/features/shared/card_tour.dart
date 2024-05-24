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
import 'package:valle_adventure_app/features/tour/presentation/providers/like_tour_provider.dart';

// ignore: must_be_immutable
class CardTour extends ConsumerStatefulWidget {
  final String id, imageUrl, title, location;
  final double price;
  bool isLiked;

  CardTour({
    super.key,
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.price,
    required this.isLiked,
  });

  @override
  ConsumerState<CardTour> createState() => _CardTourState();
}

class _CardTourState extends ConsumerState<CardTour> {
  @override
  Widget build(BuildContext context) {
    final authProvider = ref.watch(authRepositoryProvider);
    final borderSide = BorderSide(
      color: AppColors.darkColor20,
    );
    return ZoomIn(
      child: GestureDetector(
        onTap: () => ref.read(routerProvider).pushNamed(
          AppRoutes.placeDetails.name,
          pathParameters: {'id': widget.id},
        ),
        child: Container(
          height: 0.25.sh,
          margin: EdgeInsets.only(bottom: AppConstants.defaultPadding),
          child: Stack(
            children: [
              _CardTourImage(imageUrl: widget.imageUrl),
              Align(
                alignment: Alignment.topRight,
                child: ButtonLike(
                    key: UniqueKey(),
                    isLiked: widget.isLiked,
                    onPressed: () {
                      if (authProvider.isAuthenticated()) {
                        setState(() {
                          widget.isLiked = !widget.isLiked;
                        });
                        ref.read(likeTourProvider([widget.id, widget.isLiked.toString()]));
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
                      CardTourTitle(title: widget.title, location: widget.location),
                      const VerticalDivider(),
                      _CardTourPrice(price: widget.price),
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
      child: imageUrl.startsWith('https')
          ? CustomCachedNetworkImage(
              imageUrl: imageUrl,
            )
          : Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              width: 1.sw,
              height: 0.25.sh,
            ),
    );
  }
}
