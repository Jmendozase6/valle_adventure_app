import 'package:fpdart/fpdart.dart';

typedef EitherStringBool = Future<Either<String, bool>>;

abstract class AuthRepository {
  EitherStringBool signIn({
    required String email,
    required String password,
  });

  EitherStringBool signUp({
    required String email,
    required String password,
    required String name,
    required String lastName,
  });

  EitherStringBool signInWithGoogle();

  Future<void> signOut();
}
