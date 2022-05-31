import 'package:dartz/dartz.dart';
import 'package:invola_assesment/failure/application_failure.dart';
import 'package:invola_assesment/features/course_details/domain/entities/course_details.dart';

abstract class CourseDetailsRepository {
  Future<Either<ApplicationFailure, CourseDetails>> fetchCourseDetails();
}
