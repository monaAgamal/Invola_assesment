import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:invola_assesment/exceptions/application_exception.dart';
import 'package:invola_assesment/features/course_details/data/data_source/course_details_datasource.dart';
import 'package:invola_assesment/features/course_details/data/models/course_details_api_response.dart';
import 'package:invola_assesment/features/course_details/data/service/course_details_api_service.dart';

@LazySingleton(as: CourseDetailsDataSource)
class CourseDetailsDataSourceImpl implements CourseDetailsDataSource {
  final CourseDetailsApiService apiService;

  CourseDetailsDataSourceImpl(this.apiService);

  @override
  Future<CourseDetailsApiResponse> fetchCourseDetails() async {
    try {
      final courseDetails = await apiService.getCourseDetails();
      return courseDetails;
    } on DioError catch (exception) {
      throw ApplicationException(message: "some thing went wrong");
    }
  }
}
