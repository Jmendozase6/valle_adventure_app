import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Valle Adventure',
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultPaddingHorizontal),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _TitleSeeAll(
              title: AppLocalizations.of(context)!.popular_places,
              route: AppRoutes.popular.name,
            ),
            const _PopularSection(),
            _TitleSeeAll(
              title: AppLocalizations.of(context)!.recommended_places,
              route: AppRoutes.recommended.name,
            ),
            const RecommendedSection(),
          ],
        ),
      ),
    );
  }
}

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        return CardTour(
          id: '$index',
          price: (index * 10) + 10,
          isLiked: index % 2 == 0,
          imageUrl:
              'https://res.cloudinary.com/dlfoowzy4/image/upload/v1715927344/valle-adventure-test/$index.jpg',
          title: 'Montaña Bravo',
          location: 'Piura',
        );
      },
    );
  }
}

class _PopularSection extends StatelessWidget {
  const _PopularSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.2.sh,
      margin: EdgeInsets.symmetric(vertical: AppConstants.defaultPadding * 0.5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (_, index) {
          return CardTourPopular(
            id: '$index',
            image:
                'https://res.cloudinary.com/dlfoowzy4/image/upload/v1715927344/valle-adventure-test/$index.jpg',
            title: 'Montaña Bravo',
            location: 'Piura',
          );
        },
      ),
    );
  }
}

class _TitleSeeAll extends ConsumerWidget {
  const _TitleSeeAll({
    required this.title,
    required this.route,
  });

  final String title, route;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.button(),
        ),
        TextButton(
          onPressed: () {
            ref.read(routerProvider).goNamed(route);
          },
          child: Text(
            AppLocalizations.of(context)!.see_all,
            style: AppStyles.button(color: AppColors.mainColor),
          ),
        ),
      ],
    );
  }
}

class CardTourPopular extends ConsumerWidget {
  const CardTourPopular({
    super.key,
    required this.id,
    required this.image,
    required this.title,
    required this.location,
  });

  final String id, image, title, location;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => ref.read(routerProvider).goNamed(
        AppRoutes.placeDetails.name,
        pathParameters: {'id': id},
      ),
      child: Container(
        height: 0.2.sh,
        width: 0.7.sw,
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(right: AppConstants.defaultPaddingHorizontal),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(AppConstants.defaultRadius),
          ),
          image: DecorationImage(
            image: CachedNetworkImageProvider(image),
            fit: BoxFit.cover,
            onError: (_, __) => debugPrint("Sad Bro :'v"),
          ),
        ),
        child: Container(
          height: 0.07.sh,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.darkColor.withOpacity(0.5),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(AppConstants.defaultRadius),
              bottomRight: Radius.circular(AppConstants.defaultRadius),
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.defaultPaddingHorizontal,
          ),
          child: CardTourTitle(
            title: title,
            location: location,
            textColor: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
