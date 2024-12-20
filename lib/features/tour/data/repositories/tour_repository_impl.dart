import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/features/tour/data/datasources/tours/tour_data_source.dart';
import 'package:valle_adventure_app/features/tour/domain/repositories/tour_repository.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class TourRepositoryImpl implements TourRepository {
  final TourDataSource datasource;

  TourRepositoryImpl({required this.datasource});

  @override
  EitherListTourBool getTours(
      {required String orderType, required int limit, String userId = ''}) async {
    final response = await datasource.getTours(limit: limit, orderType: orderType, userId: userId);
    return response.fold(
      (l) => left(false),
      (r) => right(r),
    );
  }

  @override
  EitherBoolTour getTourById({required String id}) async {
    final response = await datasource.getTourById(id: id);
    return response.fold(
      (l) => left(false),
      (r) => right(r),
    );
  }

  @override
  EitherTours getToursByName({required String name}) async {
    final response = await datasource.getToursByName(name: name);
    return response.fold(
      (l) => left([]),
      (r) => right(r),
    );
  }

  @override
  EitherListTourBool getToursByUser({required String userId}) async {
    final response = await datasource.getToursByUser(userId: userId);
    return response.fold(
      (l) => left(false),
      (r) => right(r),
    );
  }

  @override
  EitherBoolBool likeTour({required String userId, required String tourId}) async {
    final response = await datasource.likeTour(userId: userId, tourId: tourId);
    return response.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }

  @override
  EitherBoolBool unlikeTour({required String likedTourId}) async {
    final response = await datasource.unlikeTour(likedTourId: likedTourId);
    return response.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }

  @override
  EitherFutureStringString getLikedTourId({required String userId, required String tourId}) async {
    final response = await datasource.getLikedTourId(tourId: tourId, userId: userId);
    return response.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }
}
