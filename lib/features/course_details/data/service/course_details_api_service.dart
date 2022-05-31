import 'package:dio/dio.dart';
import 'package:invola_assesment/features/course_details/data/models/course_details_api_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:injectable/injectable.dart';
part 'course_details_api_service.g.dart';

@RestApi()
@lazySingleton
abstract class CourseDetailsApiService
{
  @factoryMethod
  factory CourseDetailsApiService(Dio dio) = _CourseDetailsApiService;
  @GET("/v3/3a1ec9ff-6a95-43cf-8be7-f5daa2122a34")
  Future<CourseDetailsApiResponse> getCourseDetails();
}