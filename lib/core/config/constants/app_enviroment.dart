// ignore_for_file: non_constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppEnviroment {
  static final SUPABASE_URL = dotenv.get('SUPABASE_URL');
  static final SUPABASE_ANON_KEY = dotenv.get('SUPABASE_ANON_KEY');

  static final AUTH_WEB_CLIENT_ID = dotenv.get('AUTH_WEB_CLIENT_ID');
  static final AUTH_ANDROID_CLIENT_ID = dotenv.get('AUTH_ANDROID_CLIENT_ID');

  static final PAYLOAD_BASE_URL = dotenv.get('PAYLOAD_BASE_URL');
  static final PAYLOAD_USERS_COLLECTION = dotenv.get('PAYLOAD_USERS_COLLECTION');
  static final PAYLOAD_USERS_API_KEY = dotenv.get('PAYLOAD_USERS_API_KEY');
}
