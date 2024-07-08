import 'package:valle_adventure_app/utils/types/type_defs.dart';

abstract class TourDataSource {
  /// Get the list of tours
  ///
  /// Returns a [List<Tour>] with the list of tours
  EitherListTourBool getTours({required String orderType, required int limit, String userId = ''});

  /// Get the list of tours by name
  ///
  /// Returns a [List<Tour>] with the list of tours
  EitherTours getToursByName({required String name});

  /// Get the list of tours by id
  ///
  /// Returns a [Tour] with the tour
  EitherBoolTour getTourById({required String id});

  /// Get the list of tours by user
  ///
  /// Returns a [List<Tour>] with the list of tours
  EitherListTourBool getToursByUser({required String userId});

  /// Like a tour
  ///
  /// Returns a [bool] with the result of the operation
  EitherBoolBool likeTour({required String userId, required String tourId});

  /// Unlike a tour
  ///
  /// Returns a [bool] with the result of the operation
  EitherBoolBool unlikeTour({required String likedTourId});

  /// Get liked tour id
  ///
  /// Returns a [String] with the liked tour id
  EitherFutureStringString getLikedTourId({required String userId, required String tourId});
}
