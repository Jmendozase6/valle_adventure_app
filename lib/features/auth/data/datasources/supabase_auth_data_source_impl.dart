import 'dart:async';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:valle_adventure_app/core/config/router/app_routes.dart';
import 'package:valle_adventure_app/features/auth/data/datasources/auth_data_source.dart';
import 'package:valle_adventure_app/features/auth/data/models/user_model.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class SupabaseAuthDataSourceImpl implements AuthDataSource {
  final _supabase = Supabase.instance.client;
  GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  EitherStringBool signUp({
    required String email,
    required String password,
    required String name,
    required String lastName,
  }) async {
    try {
      await _supabase.auth.signUp(password: password, email: email, data: {
        'name': name,
        'last_name': lastName,
      });
      return right(true);
    } on AuthException catch (error) {
      return left(error.message);
    } catch (e) {
      return left('Ocurrió un Error');
    }
  }

  @override
  EitherStringBool signIn({
    required String email,
    required String password,
  }) async {
    try {
      await _supabase.auth.signInWithPassword(password: password, email: email);
      return right(true);
    } on AuthException catch (error) {
      return left(error.message);
    } catch (e) {
      return left('Ocurrió un Error');
    }
  }

  @override
  EitherStringBool signInWithGoogle() async {
    initGoogleSignIn();

    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) {
      return left('No Google User found.');
    }
    final googleAuth = await googleUser.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    if (accessToken == null) {
      return left('No Access Token found.');
    }
    if (idToken == null) {
      return left('No ID Token found.');
    }

    await _supabase.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      accessToken: accessToken,
    );

    return right(true);
  }

  @override
  Future<void> signOut() async {
    initGoogleSignIn();
    await _supabase.auth.signOut();
    await googleSignIn.disconnect();
    await googleSignIn.signOut();
  }

  @override
  bool isAuthenticated() => _supabase.auth.currentUser != null;

  @override
  EitherStringUserModel getCurrentUser() async {
    if (isAuthenticated() == false) return left('No user found');
    try {
      final user = await _supabase
          .from('public_users')
          .select()
          .eq('id', _supabase.auth.currentUser!.id)
          .single();
      final userModel = UserModel.fromJson(user);
      return right(userModel);
    } catch (e) {
      return left('Error');
    }
  }

  @override
  EitherStringBool resetPassword({required String email}) async {
    try {
      // Check if the email is registered
      final existsEmail = await checkEmailExists(email: email);
      if (existsEmail.isLeft() || existsEmail == right(false)) {
        return left('El correo no está registrado');
      }
      await _supabase.auth.resetPasswordForEmail(email);
      return right(true);
    } on AuthException catch (error) {
      return left(error.message);
    } catch (e) {
      return left('Ocurrió un Error');
    }
  }

  @override
  EitherStringString getCurrentUserId() {
    final userId = _supabase.auth.currentUser!.id;
    return userId.isNotEmpty ? right(userId) : left('no-id');
  }

  @override
  StreamSubscription<AuthState> onAuthStateChange({required GoRouter router}) {
    return _supabase.auth.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;
      if (event == AuthChangeEvent.signedIn) {
        router.goNamed(AppRoutes.home.name);
      }
      // else if (event == AuthChangeEvent.signedOut) {
      //   router.goNamed(AppRoutes.signIn.name);
      // }
    });
  }

  @override
  EitherBool checkEmailExists({required String email}) async {
    try {
      final response = await _supabase.from('public_users').select().eq('email', email);
      return right(response.isNotEmpty);
    } catch (e) {
      return left(false);
    }
  }

  void initGoogleSignIn() {
    if (googleSignIn.clientId != null) return;
    final webClientId = dotenv.get('AUTH_WEB_CLIENT_ID');
    final androidClientId = dotenv.get('AUTH_ANDROID_CLIENT_ID');
    googleSignIn = GoogleSignIn(
      serverClientId: webClientId,
      clientId: androidClientId,
    );
  }
}
