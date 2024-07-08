import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/features/auth/data/models/user_model.dart';
import 'package:valle_adventure_app/features/settings/domain/entities/privacy_policy.dart';
import 'package:valle_adventure_app/features/settings/domain/entities/terms_conditions.dart';
import 'package:valle_adventure_app/features/tour/data/models/department_model.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/booking.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/tour.dart';

typedef EitherStringBool = Future<Either<String, bool>>;
typedef EitherStringUserModel = Future<Either<String, UserModel>>;
typedef EitherStringString = Either<String, String>;
typedef EitherFutureStringString = Future<Either<String, String>>;

typedef EitherListTourBool = Future<Either<bool, List<Tour>>>;
typedef EitherListPrivacyPolicies = Future<Either<List<PrivacyPolicy>, List<PrivacyPolicy>>>;
typedef EitherListTermsConditions = Future<Either<List<TermsConditions>, List<TermsConditions>>>;

typedef EitherBoolTour = Future<Either<bool, Tour>>;
typedef EitherBoolBool = Future<Either<bool, bool>>;
typedef EitherTours = Future<Either<List<Tour>, List<Tour>>>;
typedef EitherListBookings = Future<Either<List<Booking>, List<Booking>>>;

typedef EitherListDepartments = Future<Either<List<DepartmentModel>, List<DepartmentModel>>>;

typedef EitherBool = Future<Either<bool, bool>>;
