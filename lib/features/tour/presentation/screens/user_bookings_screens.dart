import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/shared/custom_app_bar.dart';
import 'package:valle_adventure_app/features/shared/custom_future_builder.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/booking.dart';

class UserBookingsScreens extends StatelessWidget {
  const UserBookingsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.recommended_places,
      ),
      body: const _UserBookingsView(),
    );
  }
}

class _UserBookingsView extends ConsumerWidget {
  const _UserBookingsView();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final tourProvider = ref.watch(tourRepositoryProvider);
    // final userId = ref.watch(authRepositoryProvider).getCurrentUserId().getOrElse((l) => '');

    return Padding(
      padding: EdgeInsets.only(
        left: AppConstants.defaultPaddingHorizontal,
        right: AppConstants.defaultPaddingHorizontal,
        top: AppConstants.defaultPadding,
      ),
      child: CustomFutureBuilder(
        // future: () => tourProvider.getTours(orderType: 'created_at', limit: 15, userId: userId),
        dataBuilder: (bookingsData) {
          final bookings = bookingsData.fold(
            (error) => [Booking.empty()],
            (data) => data,
          );
          return ListView.builder(
            itemCount: bookings.length,
            itemBuilder: (_, index) {
              final booking = bookings[index];
              return const ListTile();
            },
          );
        },
      ),
    );
  }
}
