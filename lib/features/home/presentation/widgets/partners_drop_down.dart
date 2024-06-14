import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomDropDown<T> extends ConsumerWidget {
  const CustomDropDown({
    super.key,
    required this.items,
    required this.hint,
    required this.onChanged,
    this.value,
  });

  final List<T> items;
  final String hint;
  final ValueChanged<T?> onChanged;
  final T? value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: ButtonTheme(
        alignedDropdown: true,
        shape: const RoundedRectangleBorder(),
        child: DropdownButton<T>(
          value: value,
          isExpanded: true,
          hint: Text(hint),
          items: items
              .map(
                (item) => DropdownMenuItem(
                  value: item,
                  child: Text('$item'),
                ),
              )
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
