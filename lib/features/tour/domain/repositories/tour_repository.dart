import 'package:valle_adventure_app/features/tour/data/models/tour.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

abstract class TourRepository {
  /// Get the list of tours
  ///
  /// Returns a [List<Tour>] with the list of tours
  EitherListTourBool getTours();

  /// Get the list of tours by category
  ///
  /// Returns a [List<Tour>] with the list of tours
  EitherListTourBool getToursByCategory({required String category});

  /// Get the list of tours ordered by
  ///
  /// Returns a [List<Tour>] with the list of tours
  EitherListTourBool getToursOrderBy({required String orderType});

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
}
