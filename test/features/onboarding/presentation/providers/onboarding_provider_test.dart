import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:valle_adventure_app/features/onboarding/presentation/providers/onboarding_provider.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('onboardingProvider', () {
    test('returns false when hasOnboarded is not set', () async {
      SharedPreferences.setMockInitialValues({});

      final container = ProviderContainer();
      final result = await container.read(onboardingProvider.future);

      expect(result, false);
    });

    test('returns true when hasOnboarded is set to true', () async {
      SharedPreferences.setMockInitialValues({'hasOnboarded': true});

      final container = ProviderContainer();
      final result = await container.read(onboardingProvider.future);

      expect(result, true);
    });

    test('returns false when hasOnboarded is set to false', () async {
      SharedPreferences.setMockInitialValues({'hasOnboarded': false});

      final container = ProviderContainer();
      final result = await container.read(onboardingProvider.future);

      expect(result, false);
    });
  });
}
