import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/settings/domain/entities/privacy_policy.dart';
import 'package:valle_adventure_app/features/settings/presentation/providers/privacy_repository_provider.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.privacy_policy,
      ),
      body: const _PrivacyViewBuilder(),
    );
  }
}

class _PrivacyViewBuilder extends ConsumerWidget {
  const _PrivacyViewBuilder();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final privacyProvider = ref.watch(legalRepositoryProvider);
    return CustomFutureBuilder(
      future: () => privacyProvider.getPrivacyPolicies(),
      dataBuilder: (policyData) {
        final policies = policyData.fold(
          (error) => [PrivacyPolicy.empty()],
          (data) => data,
        );
        return SingleChildScrollView(
          child: ListView.builder(
            // itemCount: policies.length > 1 ? policies.getRange(0, 3).length : 1,
            itemCount: policies.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              final policy = policies[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultPaddingHorizontal),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(policy.title),
                      subtitle: Text(policy.content),
                      contentPadding: EdgeInsets.zero,
                      minTileHeight: 0,
                    ),
                    const CustomDivider(),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
