import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:valle_adventure_app/core/config/constants/app_enviroment.dart';

class SupabaseService {
  static Future<void> init() async {
    await Supabase.initialize(
      url: AppEnviroment.SUPABASE_URL,
      anonKey: AppEnviroment.SUPABASE_ANON_KEY,
    );
  }
}
