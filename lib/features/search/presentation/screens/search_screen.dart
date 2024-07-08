import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/features/shared/shared.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/tour.dart';
import 'package:valle_adventure_app/utils/searchs/debounce.dart';

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

class _SearchView extends ConsumerStatefulWidget {
  const _SearchView();

  @override
  ConsumerState<_SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends ConsumerState<_SearchView> {
  final tours = <Tour>[];
  final searchTours = <Tour>[];

  @override
  void initState() {
    super.initState();
    tours.clear();
  }

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    final debouncer = Debouncer(milliseconds: 500);

    return Column(
      children: [
        SizedBox(height: AppConstants.defaultPadding),
        CustomInput(
          labelText: locale.search,
          onChanged: (text) => debouncer.run(
            () async {
              if (text.isEmpty) return;
              searchTours.clear();
              searchTours.addAll(tours
                  .where((element) => element.name.toLowerCase().contains(text.toLowerCase())));
              // final response = await ref.read(getToursByNameProvider).call(name: text);
              // response.fold(
              //   (left) => tours.clear(),
              //   (right) {
              //     tours.clear();
              //     tours.addAll(right);
              //   },
              // );

              setState(() {});
            },
          ),
        ),
        // SizedBox(height: AppConstants.defaultPadding),
        // const DepartmentChooser(
        //   departments: [],
        // ),
        SizedBox(height: AppConstants.defaultPadding),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.defaultPaddingHorizontal),
            child: ListView.builder(
              itemCount: tours.length,
              itemBuilder: (BuildContext context, int index) {
                final tour = tours[index];
                return CardTour(
                  id: tour.id,
                  imageUrl: tour.images.first,
                  title: tour.name,
                  location: tour.department,
                  price: tour.price,
                  isLiked: tour.isLiked,
                );
              },
            ),
          ),
        ),
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
