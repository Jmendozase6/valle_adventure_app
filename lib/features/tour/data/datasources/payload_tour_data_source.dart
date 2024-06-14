import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/fpdart.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:valle_adventure_app/features/tour/data/datasources/tour_data_source.dart';
import 'package:valle_adventure_app/features/tour/data/models/tour_model.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/tour.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class PayloadTourDataSourceImpl implements TourDataSource {
  // final _supabase = Supabase.instance.client;
  final _payloadCMS = Dio(
    BaseOptions(
      baseUrl: dotenv.get('PAYLOAD_BASE_URL'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            '${dotenv.get('PAYLOAD_USERS_COLLECTION')} API-Key ${dotenv.get('PAYLOAD_USERS_API_KEY')}'
      },
    ),
  );

  @override
  EitherTours getSavedTours() async {
    try {
      // final userId = _supabase.auth.currentUser?.id ?? '';
      final response = await _payloadCMS.get('/tours');
      final toursModel = tourModelFromJson(response.data);
      final savedTours = toursModel.docs.map((tour) => Tour.fromModel(tour)).toList();
      return right(savedTours);
    } catch (e) {
      return left([]);
    }
  }

  @override
  EitherBoolTour getTourById({required String id}) async {
    try {
      final response = await _payloadCMS.get('/tours/$id');
      final tourModel = TourDoc.fromJson(response.data);
      final tour = Tour.fromModel(tourModel);
      return right(tour);
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherListTourBool getTours({required String orderType, required int limit}) async {
    try {
      // final userId = _supabase.auth.currentUser?.id ?? '';
      final response = await _payloadCMS.get('/tours', queryParameters: {
        'limit': limit,
      });
      final tours = TourModel.fromJson(response.data as Map<String, dynamic>);
      final loadedTours = tours.docs.map((tour) => Tour.fromModel(tour)).toList();
      return right(loadedTours);
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherListTourBool getToursByCategory({required String category}) {
    // TODO: implement getToursByCategory
    throw UnimplementedError();
  }

  @override
  EitherListTourBool getToursByName({required String name}) {
    // TODO: implement getToursByName
    throw UnimplementedError();
  }

  @override
  EitherListTourBool getToursByUser({required String userId}) {
    // TODO: implement getToursByUser
    throw UnimplementedError();
  }

  @override
  EitherBoolBool isTourLiked({required String userId, required String tourId}) {
    // TODO: implement isTourLiked
    throw UnimplementedError();
  }

  @override
  EitherBoolBool likeTour({required String userId, required String tourId}) {
    // TODO: implement likeTour
    throw UnimplementedError();
  }

  @override
  EitherBoolBool unlikeTour({required String userId, required String tourId}) {
    // TODO: implement unlikeTour
    throw UnimplementedError();
  }
}
