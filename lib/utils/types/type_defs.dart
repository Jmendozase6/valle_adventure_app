import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/features/auth/data/models/user_model.dart';
import 'package:valle_adventure_app/features/tour/data/models/tour.dart';

typedef EitherStringBool = Future<Either<String, bool>>;
typedef EitherStringUserModel = Future<Either<String, UserModel>>;

typedef EitherListTourBool = Future<Either<bool, List<Tour>>>;
typedef EitherBoolTour = Future<Either<bool, Tour>>;
