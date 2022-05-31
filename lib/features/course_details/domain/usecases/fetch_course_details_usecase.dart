import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:invola_assesment/core/domain/usecase.dart';
import 'package:invola_assesment/failure/application_failure.dart';
import 'package:invola_assesment/features/course_details/domain/course_details_repository/course_details_repository.dart';
import 'package:invola_assesment/features/course_details/domain/entities/course_details.dart';

@injectable
class FetchCourseDetailsUseCase extends UseCase<
    Future<Either<ApplicationFailure, CourseDetails>>, NoParam> {
  final CourseDetailsRepository courseDetailsRepository;

  FetchCourseDetailsUseCase({required this.courseDetailsRepository});

  @override
  Future<Either<ApplicationFailure, CourseDetails>> call() async {
    return courseDetailsRepository.fetchCourseDetails();
  }
}
