import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/features/auth/data/models/user_model.dart';
import 'package:valle_adventure_app/features/tour/data/models/tour.dart';

typedef EitherStringBool = Future<Either<String, bool>>;
typedef EitherStringUserModel = Future<Either<String, UserModel>>;
typedef EitherStringString = Either<String, String>;

typedef EitherListTourBool = Future<Either<bool, List<Tour>>>;
typedef EitherBoolTour = Future<Either<bool, Tour>>;
typedef EitherBoolBool = Future<Either<bool, bool>>;
typedef EitherTours = Future<Either<List<Tour>, List<Tour>>>;

/// Generics
typedef EitherBool = Future<Either<bool, bool>>;
