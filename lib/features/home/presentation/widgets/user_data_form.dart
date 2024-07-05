import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/home/presentation/providers/reservation_form_provider.dart';
import 'package:valle_adventure_app/features/shared/custom_input.dart';

class UserDataForm extends ConsumerWidget {
  const UserDataForm({
    super.key,
    required this.userName,
    required this.userLastName,
    required this.userPhone,
    required this.userIdCard,
  });

  final String userName;
  final String userLastName;
  final String userPhone;
  final String userIdCard;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = AppLocalizations.of(context)!;
    final currentBook = ref.watch(bookProvider.notifier);
    return Form(
      key: currentBook.userDataFormKey,
      child: Column(
        children: [
          CustomInput(
            labelText: locale.name,
            padding: 0,
            initialValue: userName,
            controller: currentBook.userNameController,
          ),
          SizedBox(height: AppConstants.defaultPadding),
          CustomInput(
            labelText: locale.last_names,
            initialValue: userLastName,
            controller: currentBook.userLastNameController,
            padding: 0,
          ),
          SizedBox(height: AppConstants.defaultPadding),
          CustomInput(
            labelText: locale.phone,
            initialValue: userPhone,
            controller: currentBook.phoneController,
            padding: 0,
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: AppConstants.defaultPadding),
          CustomInput(
            labelText: locale.id_card,
            padding: 0,
            initialValue: userIdCard,
            controller: currentBook.idCardController,
          ),
          SizedBox(height: AppConstants.defaultPadding),
        ],
      ),
    );
  }
}
