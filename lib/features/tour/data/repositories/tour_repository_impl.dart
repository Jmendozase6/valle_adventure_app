import 'package:fpdart/fpdart.dart';
import 'package:valle_adventure_app/features/tour/data/datasources/tour_data_source.dart';
import 'package:valle_adventure_app/features/tour/domain/repositories/tour_repository.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class TourRepositoryImpl implements TourRepository {
  final TourDataSource datasource;

  TourRepositoryImpl({required this.datasource});

  @override
  EitherListTourBool getTours({required String orderType, required int limit}) async {
    final response = await datasource.getTours(limit: limit, orderType: orderType);
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
  EitherListTourBool getToursByCategory({required String category}) async {
    final response = await datasource.getToursByCategory(category: category);
    return response.fold(
      (l) => left(false),
      (r) => right(r),
    );
  }

  @override
  EitherListTourBool getToursByName({required String name}) async {
    final response = await datasource.getToursByName(name: name);
    return response.fold(
      (l) => left(false),
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
  EitherBoolBool unlikeTour({required String userId, required String tourId}) async {
    final response = await datasource.unlikeTour(userId: userId, tourId: tourId);
    return response.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }

  @override
  EitherBoolBool isTourLiked({required String userId, required String tourId}) async {
    final response = await datasource.isTourLiked(userId: userId, tourId: tourId);
    return response.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }

  @override
  EitherTours getSavedTours() async {
    final response = await datasource.getSavedTours();
    return response.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }
}
