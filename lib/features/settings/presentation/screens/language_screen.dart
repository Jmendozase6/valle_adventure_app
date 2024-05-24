import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:valle_adventure_app/features/settings/providers/providers.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.select_language,
      ),
      body: const _LanguageView(),
    );
  }
}

class _LanguageView extends ConsumerWidget {
  const _LanguageView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final languages = ref.watch(languagesProvider);
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            itemCount: languages.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              return ListTile(
                title: Text(languages[index]),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  if (ref.watch(languageProvider) == index) return;
                  ref.read(languageProvider.notifier).update(
                        (value) => value == 0 ? 1 : 0,
                      );
                },
                selected: ref.watch(languageProvider) == index,
              );
            },
          ),
        ],
      ),
    );
  }
}
