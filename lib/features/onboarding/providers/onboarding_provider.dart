// Provider to handle the onboarding state
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final onboardingProvider = FutureProvider<bool>((ref) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('hasOnboarded') ?? false;
});

// Set hasOnboarded to true using FutureProvider
final setOnboardingProvider = FutureProvider<void>((ref) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool('hasOnboarded', true);
});
