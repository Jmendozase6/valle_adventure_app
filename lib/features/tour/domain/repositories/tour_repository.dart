import 'package:valle_adventure_app/utils/types/type_defs.dart';

abstract class TourRepository {
  /// Get the list of tours
  ///
  /// Returns a [List<Tour>] with the list of tours
  EitherListTourBool getTours({required String orderType, required int limit});

  /// Get the list of tours by category
  ///
  /// Returns a [List<Tour>] with the list of tours
  EitherListTourBool getToursByCategory({required String category});

  /// Get the list of tours by name
  ///
  /// Returns a [List<Tour>] with the list of tours
  EitherListTourBool getToursByName({required String name});

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
  EitherBoolBool unlikeTour({required String userId, required String tourId});

  /// Get if a tour is liked
  ///
  /// Returns a [bool] with the result of the operation
  EitherBoolBool isTourLiked({required String userId, required String tourId});

  /// Get the list of saved tours
  ///
  /// Returns a [List<Tour>] with the list of saved tours
  EitherTours getSavedTours();
}
