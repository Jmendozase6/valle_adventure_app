import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:valle_adventure_app/features/auth/domain/repositories/auth_repository.dart';

abstract class AuthDataSource {
  /// Sign in with email and password
  ///
  /// Returns a [EitherStringBool] with the result of the operation

  EitherStringBool signIn({
    required String email,
    required String password,
  });

  /// Sign up with email and password
  ///
  /// Returns a [EitherStringBool] with the result of the operation

  EitherStringBool signUp({
    required String email,
    required String password,
    required String name,
    required String lastName,
  });

  /// Sign in with Google
  ///
  /// Returns a [EitherStringBool] with the result of the operation

  EitherStringBool signInWithGoogle();

  /// Sign out
  ///
  /// No return value

  Future<void> signOut();
}

class AuthDataSourceImpl implements AuthDataSource {
  final _supabase = Supabase.instance.client;
  @override
  EitherStringBool signUp({
    required String email,
    required String password,
    required String name,
    required String lastName,
  }) async {
    final response = await _supabase.auth.signUp(password: password, email: email, data: {
      'name': name,
      'last_name': lastName,
    });
    return response.user == null ? left('Error') : right(true);
  }

  @override
  EitherStringBool signIn({
    required String email,
    required String password,
  }) async {
    final response = await _supabase.auth.signInWithPassword(email: email, password: password);
    return response.user == null ? left('Error') : right(true);
  }

  @override
  EitherStringBool signInWithGoogle() async {
    //TODO: Add your webClientId and androidClientId
    const webClientId = 'my-web.apps.googleusercontent.com';
    const androidClientId = 'my-android.apps.googleusercontent.com';

    final GoogleSignIn googleSignIn = GoogleSignIn(
      serverClientId: webClientId,
      clientId: androidClientId,
    );

    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
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
    await _supabase.auth.signOut();
  }
}
