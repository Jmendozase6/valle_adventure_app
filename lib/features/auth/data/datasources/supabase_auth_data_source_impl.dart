import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:valle_adventure_app/features/auth/data/datasources/auth_data_source.dart';
import 'package:valle_adventure_app/features/auth/data/models/user_model.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class SupabaseAuthDataSourceImpl implements AuthDataSource {
  final _supabase = Supabase.instance.client;
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
  Future<EitherStringBool> resetPassword({required String email}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  EitherStringString getCurrentUserId() {
    final userId = _supabase.auth.currentUser!.id;
    return userId.isNotEmpty ? right(userId) : left('no-id');
  }
}