import 'package:valle_adventure_app/features/tour/data/datasources/tour_data_source.dart';
import 'package:valle_adventure_app/utils/types/type_defs.dart';

class LocalDataSourceImpl implements TourDataSource {
  @override
  EitherTours getSavedTours() {
    // TODO: implement getSavedTours
    throw UnimplementedError();
  }

  @override
  EitherBoolTour getTourById({required String id}) {
    // TODO: implement getTourById
    throw UnimplementedError();
  }

  @override
  EitherListTourBool getTours() {
    // TODO: implement getTours
    throw UnimplementedError();
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
  EitherListTourBool getToursOrderBy({required String orderType}) {
    // TODO: implement getToursOrderBy
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
