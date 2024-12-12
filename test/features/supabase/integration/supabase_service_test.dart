import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:valle_adventure_app/core/config/constants/app_enviroment.dart';
import 'package:valle_adventure_app/features/supabase/supabase_service.dart';

class MockSupabaseWrapper extends Mock {
  Future<void> initialize({required String url, required String anonKey}) async {}
}

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  tearDown(() {
    Supabase.instance.dispose();
  });

  group('SupabaseService Tests', () {
    test('Debe iniciar correctamente Supabase', () async {
      await SupabaseService.init();

      // Verificaciones
      expect(Supabase.instance.client, isA<SupabaseClient>());
      expect(Supabase.instance.client.rest, isNotNull);
      expect(Supabase.instance.client.headers, isNotNull);
    });

    test('Debe lanzar excepción si la inicialización falla', () async {
      final mockWrapper = MockSupabaseWrapper();

      when(mockWrapper.initialize(
        url: AppEnviroment.SUPABASE_URL,
        anonKey: AppEnviroment.SUPABASE_ANON_KEY,
      )).thenThrow(Exception('Initialization failed'));

      expect(
        () async => await SupabaseService.init(),
        throwsA(isA<Exception>()),
      );
    });
  });
}
