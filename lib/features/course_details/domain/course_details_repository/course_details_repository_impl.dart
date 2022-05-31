import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:invola_assesment/core/utils/exception_to_failure_decoder.dart';
import 'package:invola_assesment/exceptions/application_exception.dart';
import 'package:invola_assesment/failure/application_failure.dart';
import 'package:invola_assesment/features/course_details/data/data_source/course_details_datasource.dart';
import 'package:invola_assesment/features/course_details/domain/course_details_repository/course_details_repository.dart';
import 'package:invola_assesment/features/course_details/domain/entities/course_details.dart';
import 'package:invola_assesment/features/course_details/domain/mappers/course_details_api_response_to_domain.dart';

@LazySingleton(as: CourseDetailsRepository)
class CourseDetailsRepositoryImpl implements CourseDetailsRepository {
  final CourseDetailsDataSource dataSource;

  CourseDetailsRepositoryImpl(this.dataSource);

  @override
  Future<Either<ApplicationFailure, CourseDetails>> fetchCourseDetails() async {
    try {
      final result = await dataSource.fetchCourseDetails();
      final CourseDetails courseDetails = result.domain();
      return Right(courseDetails);
    } on ApplicationException catch (exception) {
      return Left(exceptionToFailureDecoder(
        exception: exception,
      ));
    }
  }
}
