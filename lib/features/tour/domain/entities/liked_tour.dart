import 'package:valle_adventure_app/features/tour/data/models/liked_tour_model.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/tour.dart';

class LikedTour {
  final String id;
  final Tour tour;
  // final UserEntity user;

  LikedTour({
    required this.id,
    required this.tour,
    // required this.user,
  });

  factory LikedTour.fromModel(LikedTourModel model) => LikedTour(
        id: model.id,
        tour: Tour.fromModel(model.tourId),
        // user: UserEntity.fromModel(model.userId),
      );
}
