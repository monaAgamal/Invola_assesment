import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:invola_assesment/features/course_details/domain/usecases/fetch_course_details_usecase.dart';
import 'package:invola_assesment/features/course_details/presentation/cubit/course_details_state.dart';
import 'package:meta/meta.dart';

@injectable
class CourseDetailsCubit extends Cubit<CourseDetailsState> {
  final FetchCourseDetailsUseCase useCase;

  CourseDetailsCubit(this.useCase) : super(const CourseDetailsState.initial());

  void fetchCourseDetails() async {
    final result = await useCase();
    emit(
      result.fold(
        (failure) => CourseDetailsState.error(errorMessage: failure.toString()),
        (data) => CourseDetailsState.courseDetailedFetched(courseDetails: data),
      ),
    );
  }
}
