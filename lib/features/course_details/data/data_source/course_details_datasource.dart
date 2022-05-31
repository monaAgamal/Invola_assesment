import 'package:invola_assesment/features/course_details/data/models/course_details_api_response.dart';

abstract class CourseDetailsDataSource {
  Future<CourseDetailsApiResponse> fetchCourseDetails();
}
