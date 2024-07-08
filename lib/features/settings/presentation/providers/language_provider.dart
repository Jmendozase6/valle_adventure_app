import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localeProvider = Provider<Locale>((ref) {
  final languageCode = ref.watch(languageProvider) == 0 ? 'es' : 'en';
  final countryCode = ref.watch(languageProvider) == 0 ? 'ES' : 'EN';
  return Locale(languageCode, countryCode);
});

final languageProvider = StateProvider<int>((ref) => 0);

final languagesProvider = Provider<List<String>>((ref) {
  final spanishLanguages = [
    'Español',
    'Inglés',
  ];
  final englishLaguages = [
    'Spanish',
    'English',
  ];
  return ref.watch(languageProvider) == 0 ? spanishLanguages : englishLaguages;
});
