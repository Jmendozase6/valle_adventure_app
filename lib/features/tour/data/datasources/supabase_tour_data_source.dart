import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:valle_adventure_app/features/tour/data/models/tour.dart';
import 'package:valle_adventure_app/features/tour/domain/repositories/tour_repository.dart';
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
      final tourResponse = await _supabase.from('tours').select().eq('id', id).single();
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
      final toursResponse = await _supabase.from('tours').select().order(orderType);
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
}
