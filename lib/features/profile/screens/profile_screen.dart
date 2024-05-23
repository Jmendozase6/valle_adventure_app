import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valle_adventure_app/core/config/constants/app_assets.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/constants/app_styles.dart';
import 'package:valle_adventure_app/core/config/router/app_router.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';
import 'package:valle_adventure_app/features/auth/data/models/user_model.dart';
import 'package:valle_adventure_app/features/auth/data/repositories/repositories.dart';
import 'package:valle_adventure_app/features/profile/widgets/widgets.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authRepository = ref.watch(authRepositoryProvider);
    return SafeArea(
      child: Scaffold(
        body:
            // When the user is logged in, show the profile view
            // _ProfileView(),
            // When the user is not logged in, show the sign in view
            authRepository.isAuthenticated() ? const _ProfileView() : const _NotUserLoggedView(),
      ),
    );
  }
}

class _ProfileView extends ConsumerWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(currentUserProvider);
    return currentUser.when(
      data: (data) {
        return FutureBuilder(
          future: data,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final user = snapshot.data as UserModel;
              return _UserLoggedView(user: user);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        );
      },
      error: (error, stackTrace) => const Center(
        child: Text('Error'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class _NotUserLoggedView extends ConsumerWidget {
  const _NotUserLoggedView();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.noLoggedUser,
              width: 0.7.sw,
            ),
            SizedBox(height: AppConstants.defaultPadding),
            Text(
              AppLocalizations.of(context)!.not_logged_message,
              style: AppStyles.button(color: AppColors.darkColor),
            ),
            TextButton(
              onPressed: () => router.pushNamed(AppRoutes.signIn.name),
              child: Text(
                AppLocalizations.of(context)!.sign_in,
                style: AppStyles.button(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UserLoggedView extends StatelessWidget {
  const _UserLoggedView({required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppConstants.defaultPadding * 3),
        CircleAvatar(
          radius: AppConstants.defaultRadius * 4,
          backgroundImage: const CachedNetworkImageProvider(
            'https://res.cloudinary.com/dlfoowzy4/image/upload/v1716010098/valle-adventure-test/avatar-1.jpg',
          ),
        ),
        SizedBox(height: AppConstants.defaultPadding),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.defaultPaddingHorizontal,
          ),
          child: const Divider(),
        ),
        const UserDataRow(
          title: 'Nombres',
          value: 'Jhair',
        ),
        const UserDataRow(
          title: 'Apellidos',
          value: 'Mendoza Sernaqué',
        ),
        const UserDataRow(
          title: 'Correo',
          value: 'papu@gmail.com',
        ),
      ],
    );
  }
}
