import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/providers.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/booking.dart';
import 'package:valle_adventure_app/features/tour/presentation/providers/bookings_provider.dart';

class UserBookingsScreens extends StatelessWidget {
  const UserBookingsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.my_bookings,
      ),
      body: const _UserBookingsView(),
    );
  }
}

class _UserBookingsView extends ConsumerWidget {
  const _UserBookingsView();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookingProvider = ref.watch(bookingsRepositoryProvider);
    final userId = ref.watch(authRepositoryProvider).getCurrentUserId().getOrElse((l) => '');

    return Padding(
      padding: EdgeInsets.only(
        left: AppConstants.defaultPaddingHorizontal,
        right: AppConstants.defaultPaddingHorizontal,
        top: AppConstants.defaultPadding,
      ),
      child: CustomFutureBuilder(
        future: () => bookingProvider.getUserBookings(userId: userId),
        dataBuilder: (bookingsData) {
          final bookings = bookingsData.fold(
            (error) => [],
            (data) => data,
          );
          final finalBookings = bookings.cast<Booking>();
          return finalBookings.isEmpty
              ? EmptyListView(
                  message: AppLocalizations.of(context)!.no_booking_tours,
                )
              : _BookingsListView(bookings: finalBookings);
        },
      ),
    );
  }
}

class _BookingsListView extends ConsumerWidget {
  const _BookingsListView({required this.bookings});

  final List<Booking> bookings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return ListView.builder(
      itemCount: bookings.length,
      itemBuilder: (_, index) {
        final booking = bookings[index];
        return Card(
          child: ListTile(
            title: Text(booking.tourName),
            subtitle: Text('Reserva: ${booking.reservationDate.substring(0, 10)}'),
            trailing: Text('S/. ${booking.total}'),
            onTap: () => router.pushNamed(
              AppRoutes.bookingDetails.name,
              extra: booking,
            ),
          ),
        );
      },
    );
  }
}
