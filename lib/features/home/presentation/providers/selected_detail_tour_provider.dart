import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider to store the selected detail tour
///
/// Returns an integer value that represents the selected detail tour
final selectedDetailTourProvider = StateProvider.autoDispose<bool>((ref) => false);
