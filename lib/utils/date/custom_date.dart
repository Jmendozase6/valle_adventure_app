import 'package:flutter/material.dart';
import 'package:board_datetime_picker/board_datetime_picker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

const optionsBoardDateTime = BoardDateTimeOptions(
  pickerFormat: PickerFormat.dmy,
  languages: BoardPickerLanguages(
    locale: 'es',
    today: 'Hoy',
    tomorrow: 'Mañana',
    now: 'Ahora',
  ),
);

Future<String?> customShowBoardDatePicker({
  required BuildContext context,
}) async {
  final locale = AppLocalizations.of(context)!;
  final result = await showBoardDateTimePickerForDate(
    options: optionsBoardDateTime,
    context: context,
    minimumDate: DateTime.now(),
  );
  final dateFormat = DateFormat('dd/MM/yyyy');
  return result == null ? locale.no_date_selected : dateFormat.format(result);
}

/// date = 'dd/MM/yyyy' = '01/01/2024'
bool isValidDateTime(String date) {
  if (date.isEmpty) return false;
  final format = DateFormat('dd/MM/yyyy');
  final formDate = format.parse(date);
  return formDate.isAfter(DateTime.now());
}
