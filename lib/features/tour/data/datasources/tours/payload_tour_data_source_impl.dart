import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:qs/qs.dart' as qs;
import 'package:valle_adventure_app/core/config/constants/app_enviroment.dart';
import 'package:valle_adventure_app/features/tour/data/datasources/tours/tour_data_source.dart';
import 'package:valle_adventure_app/features/tour/data/models/liked_tour_model.dart';
import 'package:valle_adventure_app/features/tour/data/models/tour_model.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/liked_tour.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/tour.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class PayloadTourDataSourceImpl implements TourDataSource {
  static final _payloadCMS = Dio(
    BaseOptions(
      baseUrl: AppEnviroment.PAYLOAD_BASE_URL,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            '${AppEnviroment.PAYLOAD_USERS_COLLECTION} API-Key ${AppEnviroment.PAYLOAD_USERS_API_KEY}'
      },
    ),
  );

  @override
  EitherBoolTour getTourById({required String id}) async {
    try {
      final response = await _payloadCMS.get('/tours/$id');
      final tourModel = TourModel.fromJson(response.data);
      final tour = Tour.fromModel(tourModel);
      return right(tour);
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherListTourBool getTours({
    required String orderType,
    required int limit,
    String userId = '',
  }) async {
    try {
      final url = userId.isEmpty ? '/tours' : '/tours/with-likes/$userId/$limit';
      final response = userId.isEmpty
          ? await _payloadCMS.get(url, queryParameters: {
              'limit': limit,
              'order': orderType,
            })
          : await _payloadCMS.get(url);
      final payloadResponse = PayloadResponseModel.fromJson(response.data as Map<String, dynamic>);
      final tours = payloadResponse.docs.map((tour) => Tour.fromModel(tour)).toList();
      return right(tours);
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherTours getToursByName({required String name}) async {
    if (name.isEmpty) return right([]);
    try {
      final query = {
        'name': {
          'contains': name,
        }
      };
      final qsEncoder = qs.Encoder();
      final queryString = qsEncoder.encode(query);
      final response = await _payloadCMS.get('/tours$queryString', queryParameters: query);
      final payloadResponse = PayloadResponseModel.fromJson(response.data as Map<String, dynamic>);
      final tours = payloadResponse.docs.map((tour) => Tour.fromModel(tour)).toList();
      return right(tours);
    } catch (e) {
      return left([]);
    }
  }

  @override
  EitherListTourBool getToursByUser({required String userId}) async {
    try {
      final response = await _payloadCMS.get('/liked-tours/by-user/$userId');
      final tourData = response.data['docs'];
      final List<Tour> tours = [];
      for (var tour in tourData) {
        final tourModel = LikedTourModel.fromJson(tour);
        final likedTour = LikedTour.fromModel(tourModel);
        tours.add(likedTour.tour);
      }
      return right(tours);
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherBoolBool likeTour({required String userId, required String tourId}) async {
    try {
      final response = await _payloadCMS.post('/liked-tours/', data: {
        'user_id': userId,
        'tour_id': tourId,
      });
      if (response.statusCode == 201 || response.statusCode == 200) {
        return right(true);
      } else {
        return left(false);
      }
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherBoolBool unlikeTour({required String likedTourId}) async {
    try {
      await _payloadCMS.delete('/liked-tours/$likedTourId');
      return right(true);
    } catch (e) {
      return left(false);
    }
  }

  @override
  EitherFutureStringString getLikedTourId({required String userId, required String tourId}) async {
    try {
      final likedTourId = await _payloadCMS.get('/liked-tours/by-user/$userId/$tourId');
      return right(likedTourId.data);
    } catch (e) {
      return left('');
    }
  }
}
