import 'package:flutter_riverpod/flutter_riverpod.dart';

final privacyProvider =
    StateNotifierProvider.family<PrivacyNotifier, List<bool>, int>((ref, length) {
  return PrivacyNotifier(length);
});

class PrivacyNotifier extends StateNotifier<List<bool>> {
  PrivacyNotifier(int length) : super(List<bool>.filled(length, false));

  void toggle(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) !state[i] else state[i],
    ];
  }
}
