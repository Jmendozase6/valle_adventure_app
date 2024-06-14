// import 'dart:convert';

// import 'package:fpdart/fpdart.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:valle_adventure_app/features/tour/data/datasources/tour_data_source.dart';
// import 'package:valle_adventure_app/features/tour/data/models/tour_model.dart';
// import 'package:valle_adventure_app/utils/types/type_defs.dart';

// class SupabaseTourDataSourceImpl implements TourDataSource {
//   final _supabase = Supabase.instance.client;

//   @override
//   EitherListTourBool getTours({required int limit}) async {
//     try {
//       final toursResponse = limit == -1
//           ? await _supabase.from('tours').select()
//           : await _supabase.from('tours').select().limit(limit);
//       final tours = tourFromJson(jsonEncode(toursResponse));
//       return Right(tours);
//     } catch (e) {
//       return left(false);
//     }
//   }

//   @override
//   EitherBoolTour getTourById({required String id}) async {
//     try {
//       final tourResponse =
//           await _supabase.rpc('get_tour_by_id', params: {'tour_id_param': id}).single();
//       final tour = Tour.fromJson(tourResponse);
//       return Right(tour);
//     } catch (e) {
//       return left(false);
//     }
//   }

//   @override
//   EitherListTourBool getToursByCategory({required String category}) async {
//     // TODO: implement getToursByCategory
//     throw UnimplementedError();
//   }

//   @override
//   EitherListTourBool getToursByName({required String name}) async {
//     // TODO: implement getToursByName
//     throw UnimplementedError();
//   }

//   @override
//   EitherListTourBool getToursOrderBy({required String orderType, required int limit}) async {
//     try {
//       final userId = _supabase.auth.currentUser?.id ?? '';

//       // if (userId.isEmpty) {
//       //   toursResponse = limit == -1
//       //       ? await _supabase.rpc('get_tour_info_filtered', params: {
//       //           'filter': orderType,
//       //         })
//       //       : await _supabase
//       //           .rpc('get_tour_info_filtered', params: {'filter': orderType}).limit(limit);
//       // } else {
//       //   toursResponse = limit == -1
//       //       ? await _supabase
//       //           .rpc('get_tour_info', params: {'filter': orderType, 'user_id_param': userId})
//       //       : await _supabase.rpc('get_tour_info',
//       //           params: {'filter': orderType, 'user_id_param': userId}).limit(limit);
//       // }

//       final toursResponse = userId.isEmpty
//           ? await _supabase
//               .rpc('get_tour_info_filtered', params: {'filter': orderType})
//               .order(orderType)
//               .limit(limit)
//           : await _supabase
//               .rpc('get_tour_info', params: {'filter': orderType, 'user_id_param': userId})
//               .order(orderType)
//               .limit(limit);

//       final tours = tourFromJson(jsonEncode(toursResponse));
//       return Right(tours);
//     } catch (e) {
//       return left(false);
//     }
//   }

//   @override
//   EitherListTourBool getToursByUser({required String userId}) async {
//     // TODO: implement getToursByUser
//     throw UnimplementedError();
//   }

//   @override
//   EitherBoolBool likeTour({required String userId, required String tourId}) async {
//     try {
//       if (userId.isEmpty || tourId.isEmpty) return left(false);
//       await _supabase.from('liked_tours').upsert(
//         {'user_id': userId, 'tour_id': tourId},
//       );
//       return right(true);
//     } catch (e) {
//       return left(false);
//     }
//   }

//   @override
//   EitherBoolBool unlikeTour({required String userId, required String tourId}) async {
//     try {
//       if (userId.isEmpty || tourId.isEmpty) return left(false);
//       await _supabase.from('liked_tours').delete().eq('user_id', userId).eq(
//             'tour_id',
//             tourId,
//           );
//       return right(true);
//     } catch (e) {
//       return left(false);
//     }
//   }

//   @override
//   EitherBoolBool isTourLiked({required String userId, required String tourId}) async {
//     try {
//       if (userId.isEmpty || tourId.isEmpty) return left(false);
//       final response = await _supabase
//           .from('liked_tours')
//           .select()
//           .eq('user_id', userId)
//           .eq('tour_id', tourId)
//           .single();

//       final isLiked = response.isNotEmpty;
//       return right(isLiked);
//     } catch (e) {
//       return left(false);
//     }
//   }

//   @override
//   EitherTours getSavedTours() async {
//     try {
//       final userId = _supabase.auth.currentUser?.id ?? '';
//       final toursResponse =
//           await _supabase.rpc('get_saved_tours', params: {'user_id_param': userId});
//       final tours = tourFromJson(jsonEncode(toursResponse));
//       return Right(tours);
//     } catch (e) {
//       return left([]);
//     }
//   }
// }
