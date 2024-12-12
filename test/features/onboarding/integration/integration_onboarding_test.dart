import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:valle_adventure_app/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Onboarding Tests', () {
    testWidgets('Debe mostrar onboarding si hasOnboarded es false', (tester) async {
      SharedPreferences.setMockInitialValues({'hasOnboarded': false});

      await tester.pumpWidget(
        const ProviderScope(
          child: MyApp(), // Reemplaza con el widget principal
        ),
      );

      expect(find.text('Bienvenido'), findsOneWidget); // Ajustar según el texto inicial
    });

    testWidgets('Debe omitir onboarding si hasOnboarded es true', (tester) async {
      SharedPreferences.setMockInitialValues({'hasOnboarded': true});

      await tester.pumpWidget(
        const ProviderScope(
          child: MyApp(),
        ),
      );

      expect(find.text('Pantalla Principal'), findsOneWidget); // Ajustar según la primera pantalla
    });
  });
}
