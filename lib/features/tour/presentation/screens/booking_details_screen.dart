import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/home/presentation/widgets/row_data_info.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';
import 'package:valle_adventure_app/features/tour/data/models/tour_model.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/booking.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key, required this.booking});

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(locale.reservation_summary),
      ),
      body: _BookingDetailsView(booking: booking),
    );
  }
}

class _BookingDetailsView extends StatelessWidget {
  const _BookingDetailsView({
    required this.booking,
  });

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            if (booking.images.isNotEmpty) ImagesSection(images: booking.images),
            const CustomDivider(),
            Text(
              locale.personal_information,
              style: AppStyles.heading04(
                color: AppColors.darkColor,
              ),
            ),
            const CustomDivider(),
            RowDataInfo(title: 'Nombres', value: booking.name),
            RowDataInfo(title: 'Apellidos', value: booking.lastName),
            RowDataInfo(title: 'Teléfono', value: booking.phone),
            RowDataInfo(title: 'Identificación', value: booking.idCard),
            const CustomDivider(),
            Text(
              locale.tour_information,
              style: AppStyles.heading04(
                color: AppColors.darkColor,
              ),
            ),
            const CustomDivider(),
            RowDataInfo(title: 'Tour', value: booking.tourName),
            RowDataInfo(title: 'Fecha de Reserva', value: booking.reservationDate.substring(0, 10)),
            RowDataInfo(title: 'Total', value: 'S./ ${booking.total}'),
            if (booking.partners.isNotEmpty)
              ItemListSection(
                title: locale.partners,
                partners: booking.partners,
              ),
            SizedBox(height: AppConstants.defaultPadding),
          ],
        ),
      ),
    );
  }
}

class ImagesSection extends StatelessWidget {
  const ImagesSection({
    super.key,
    required this.images,
  });

  final List<ImageModel> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.17.sh,
      child: Swiper(
        viewportFraction: 0.8,
        autoplay: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultPaddingHorizontal * 0.5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
            child: CustomCachedNetworkImage(
              imageUrl: images[index].src.cloudinary.secureUrl,
            ),
          ),
        ),
        itemCount: images.length,
      ),
    );
  }
}

class ItemListSection extends StatelessWidget {
  const ItemListSection({
    super.key,
    required this.partners,
    required this.title,
  });

  final String title;
  final List<String> partners;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDivider(),
        Text(
          title,
          style: AppStyles.heading04(
            color: AppColors.darkColor,
          ),
        ),
        const CustomDivider(),
        partners.isNotEmpty
            ? Column(
                children: partners
                    .map(
                      (partner) => RowDataInfo(
                        title: 'Acompañante',
                        value: partner,
                      ),
                    )
                    .toList(),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
