import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.search,
      ),
      body: const _SearchView(),
    );
  }
}

class _SearchView extends StatelessWidget {
  const _SearchView();

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Column(
      children: [
        SizedBox(height: AppConstants.defaultPadding),
        CustomInput(labelText: locale.search),
        SizedBox(height: AppConstants.defaultPadding),
        const DepartmentChooser(
          departments: [],
        )
      ],
    );
  }
}

class DepartmentChooser extends StatelessWidget {
  const DepartmentChooser({
    super.key,
    required this.departments,
  });

  final List<String> departments;

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Chip(label: Text('Cusco')),
      ],
    );
  }
}
