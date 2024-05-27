import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valle_adventure_app/core/config/constants/app_assets.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';
import 'package:valle_adventure_app/features/tour/data/models/tour.dart';
import 'package:valle_adventure_app/features/tour/presentation/providers/tour_repository_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Valle Adventure',
        actions: [
          IconButton(
            onPressed: () => router.pushNamed(AppRoutes.settings.name),
            icon: const Icon(FontAwesomeIcons.gear),
          ),
        ],
      ),
      body: const _HomeView(),
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

class RecommendedSection extends ConsumerWidget {
  const RecommendedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tourProvider = ref.watch(tourRepositoryProvider);

    return CustomFutureBuilder(
      future: () => tourProvider.getToursOrderBy(orderType: 'created_at'),
      dataBuilder: (tourData) {
        final tours = tourData.fold(
          (error) => [Tour.empty()],
          (data) => data,
        );
        return ListView.builder(
          itemCount: tours.length > 1 ? tours.getRange(0, 3).length : 1,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            final tour = tours[index];
            return CardTour(
              id: tour.id,
              price: tour.price,
              isLiked: tour.isLiked ?? false,
              imageUrl: tour.images!.isEmpty ? AppAssets.placeholderError : tour.images!.first,
              title: tour.name,
              location: tour.department,
            );
          },
        );
      },
    );
  }
}

class _PopularSection extends ConsumerWidget {
  const _PopularSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tourProvider = ref.watch(tourRepositoryProvider);

    return SizedBox(
      height: 0.2.sh,
      child: CustomFutureBuilder(
        future: () => tourProvider.getToursOrderBy(orderType: 'rating'),
        dataBuilder: (user) {
          final tours = user.fold(
            (error) => [Tour.empty()],
            (data) => data,
          );
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tours.length > 1 ? tours.getRange(0, 3).length : 1,
            itemBuilder: (_, index) {
              final tour = tours[index];
              return CardTourPopular(
                id: tour.id,
                image: tour.images!.isEmpty ? AppAssets.placeholderError : tour.images!.first,
                title: tour.name,
                location: tour.department,
              );
            },
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
            style: AppStyles.subtitle(color: AppColors.mainColor),
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
      onTap: () => ref.read(routerProvider).pushNamed(
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
            image: image.startsWith('https')
                ? CachedNetworkImageProvider(image)
                : const AssetImage(AppAssets.placeholderError) as ImageProvider<Object>,
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
