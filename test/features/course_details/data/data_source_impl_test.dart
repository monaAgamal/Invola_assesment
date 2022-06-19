import 'package:invola_assesment/features/course_details/data/data_source/course_details_datasource_impl.dart';
import 'package:invola_assesment/features/course_details/data/service/course_details_api_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../../mocks/mock_json_response.dart';
import 'data_source_impl_test.mocks.dart';
import 'package:flutter_test/flutter_test.dart';

@GenerateMocks([CourseDetailsApiService])
void main() {

  final mockApiService = MockCourseDetailsApiService();
  final CourseDetailsDataSourceImpl detailsDataSourceImpl =
      CourseDetailsDataSourceImpl(mockApiService);
  when(detailsDataSourceImpl.fetchCourseDetails())
      .thenAnswer((_) async => fakeCourseDetailsApiResponse);
  test(
    "verify api call done",
    () async {
      await detailsDataSourceImpl.fetchCourseDetails();
      verify(detailsDataSourceImpl.fetchCourseDetails());
    },
  );
}
