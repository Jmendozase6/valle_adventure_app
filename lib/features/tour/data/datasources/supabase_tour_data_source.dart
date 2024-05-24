import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:valle_adventure_app/features/tour/data/models/tour.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

abstract class TourDataSource {
  /// Get the list of tours
  ///
  /// Returns a [List<Tour>] with the list of tours
  EitherListTourBool getTours();

  /// Get the list of tours by category
  ///
  /// Returns a [List<Tour>] with the list of tours
  EitherListTourBool getToursByCategory({required String category});

  /// Get the list of tours by filter
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

class SupabaseTourDataSourceImpl implements TourDataSource {
  final _supabase = Supabase.instance.client;

  @override
  EitherListTourBool getTours() async {
    try {
      final toursResponse = await _supabase.from('tours').select();
      final tours = tourFromJson(jsonEncode(toursResponse));
      return Right(tours);
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherBoolTour getTourById({required String id}) async {
    try {
      final tourResponse =
          await _supabase.rpc('get_tour_by_id', params: {'tour_id_param': id}).single();
      final tour = Tour.fromJson(tourResponse);
      return Right(tour);
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherListTourBool getToursByCategory({required String category}) async {
    // TODO: implement getToursByCategory
    throw UnimplementedError();
  }

  @override
  EitherListTourBool getToursByName({required String name}) async {
    // TODO: implement getToursByName
    throw UnimplementedError();
  }

  @override
  EitherListTourBool getToursOrderBy({required String orderType}) async {
    try {
      final userId = _supabase.auth.currentUser?.id ?? '';
      final toursResponse = userId.isEmpty
          ? await _supabase.rpc('get_tour_info_filtered', params: {'filter': orderType})
          : await _supabase
              .rpc('get_tour_info', params: {'filter': orderType, 'user_id_param': userId});
      final tours = tourFromJson(jsonEncode(toursResponse));
      return Right(tours);
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherListTourBool getToursByUser({required String userId}) async {
    // TODO: implement getToursByUser
    throw UnimplementedError();
  }

  @override
  EitherBoolBool likeTour({required String userId, required String tourId}) async {
    try {
      if (userId.isEmpty || tourId.isEmpty) return left(false);
      await _supabase.from('liked_tours').upsert(
        {'user_id': userId, 'tour_id': tourId},
      );
      return right(true);
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherBoolBool unlikeTour({required String userId, required String tourId}) async {
    try {
      if (userId.isEmpty || tourId.isEmpty) return left(false);
      await _supabase.from('liked_tours').delete().eq('user_id', userId).eq(
            'tour_id',
            tourId,
          );
      return right(true);
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherBoolBool isTourLiked({required String userId, required String tourId}) async {
    try {
      if (userId.isEmpty || tourId.isEmpty) return left(false);
      final response = await _supabase
          .from('liked_tours')
          .select()
          .eq('user_id', userId)
          .eq('tour_id', tourId)
          .single();

      final isLiked = response.isNotEmpty;
      return right(isLiked);
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherTours getSavedTours() async {
    try {
      final userId = _supabase.auth.currentUser?.id ?? '';
      final toursResponse =
          await _supabase.rpc('get_saved_tours', params: {'user_id_param': userId});
      final tours = tourFromJson(jsonEncode(toursResponse));
      return Right(tours);
    } catch (e) {
      return left([]);
    }
  }
}
