import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dio/dio.dart';
import 'package:valle_adventure_app/features/tour/data/datasources/tours/payload_tour_data_source_impl.dart';
import 'package:valle_adventure_app/features/tour/domain/entities/tour.dart';
import 'package:fpdart/fpdart.dart';

// Mock de Dio para simular las peticiones HTTP
class MockDio extends Mock implements Dio {}

void main() {
  late PayloadTourDataSourceImpl dataSource;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    dataSource = PayloadTourDataSourceImpl(); // Asegúrate de que uses mockDio aquí
  });

  group('getTourById', () {
    const tourId = '1';
    const mockResponse = {
      'id': '1',
      'name': 'Tour 1',
      'overview': 'This is an overview of the tour.',
      'images': [],
      'price': 100,
      'packing': 'Essentials',
      'important': 'Carry water.',
      'department': 'Adventure',
      'isAvailable': true,
      'rating': 4.7,
      'includedItems': 'Lunch, Guide',
      'notIncludedItems': 'Transportation',
      'availableDates': [],
      'isLiked': false,
    };

    test('debe devolver un Tour cuando la llamada es exitosa', () async {
      // Configura el mock para que retorne una respuesta exitosa
      when(() => mockDio.get('/tours/$tourId')).thenAnswer(
        (_) async => Response(
          data: mockResponse,
          statusCode: 200,
          requestOptions: RequestOptions(path: ''),
        ),
      );

      // Llama al método
      final result = await dataSource.getTourById(id: tourId);

      // Verificaciones
      // result.fold(
      //   (l) => fail('Expected a Tour, but got a failure: $l'),
      //   (r) => expect(r, isA<Tour>()),
      // );
      expect(result.isRight(), true);
      expect(result, right(Tour));
    });

    test('debe devolver false cuando la llamada falla', () async {
      // Simulamos un error en la llamada de Dio
      when(() => mockDio.get('/tours/$tourId')).thenThrow(DioException(
        requestOptions: RequestOptions(path: ''),
        type: DioExceptionType.badResponse,
      ));

      // Llamada a la función
      final result = await dataSource.getTourById(id: tourId);

      // Verificaciones
      expect(result.isLeft(), true);
      expect(result, left(false));
    });
  });
}
