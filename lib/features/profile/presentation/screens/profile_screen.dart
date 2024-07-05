import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:valle_adventure_app/core/config/constants/app_assets.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/features/auth/data/models/user_model.dart';
import 'package:valle_adventure_app/features/auth/presentation/providers/providers.dart';
import 'package:valle_adventure_app/features/profile/presentation/widgets/widgets.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CustomAppBar(
        // TODO: Translate the title
        title: 'Profile',
      ),
      body: _ProfileView(),
    );
  }
}

class _ProfileView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authRepository = ref.watch(authRepositoryProvider);
    final userFuture = authRepository.getCurrentUser();

    // When the user is logged in, show the profile view
    // When the user is not logged in, show the sign in view
    return authRepository.isAuthenticated()
        ? CustomFutureBuilder(
            future: () => userFuture,
            dataBuilder: (user) {
              final userModel = user.fold(
                (error) => UserModel.empty(),
                (data) => data,
              );
              return _UserLoggedView(user: userModel);
            },
          )
        : const NotUserLoggedView();
  }
}

class _UserLoggedView extends ConsumerWidget {
  const _UserLoggedView({required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = AppLocalizations.of(context)!;
    return Column(
      children: [
        SizedBox(height: AppConstants.defaultPadding),
        CircleAvatar(
          radius: AppConstants.defaultRadius * 4,
          backgroundImage: user.imageUrl.isEmpty
              ? const AssetImage(AppAssets.noImageUser) as ImageProvider
              : CachedNetworkImageProvider(user.imageUrl),
        ),
        SizedBox(height: AppConstants.defaultPadding),
        const _CustomDivider(),
        SizedBox(height: AppConstants.defaultPadding),
        Text(
          locale.personal_information,
          style: AppStyles.heading04(),
        ),
        SizedBox(height: AppConstants.defaultPadding),
        UserDataRow(
          title: locale.name,
          value: user.name,
        ),
        if (user.lastName.isNotEmpty)
          UserDataRow(
            title: locale.last_names,
            value: user.lastName,
          ),
        UserDataRow(
          title: locale.email,
          value: user.email,
        ),
        if (user.phone.isNotEmpty)
          UserDataRow(
            title: locale.phone,
            value: user.phone,
          ),
        if (user.idCard.isNotEmpty)
          UserDataRow(
            title: locale.id_card,
            value: user.idCard,
          ),
      ],
    );
  }
}

class _CustomDivider extends StatelessWidget {
  const _CustomDivider();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.defaultPaddingHorizontal,
      ),
      child: const Divider(),
    );
  }
}
