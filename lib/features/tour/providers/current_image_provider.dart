import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentImageProvider =
    StateNotifierProvider<CurrentImageNotifier, int>((ref) => CurrentImageNotifier());

class CurrentImageNotifier extends StateNotifier<int> {
  CurrentImageNotifier() : super(0);

  int get imageIndex => state;
  int imageIndexPlusOne = 1;

  void nextImage(int length) {
    state < length - 1 ? state++ : state = 0;
    imageIndexPlusOne = state < length - 1 ? state + 1 : 0;
  }
}
