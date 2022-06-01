import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:invola_assesment/features/course_details/domain/usecases/fetch_course_details_usecase.dart';
import 'package:invola_assesment/features/course_details/presentation/cubit/course_details_state.dart';

@injectable
class CourseDetailsCubit extends Cubit<CourseDetailsState> {
  final FetchCourseDetailsUseCase useCase;

  CourseDetailsCubit(this.useCase) : super(const CourseDetailsState.initial());

  void fetchCourseDetails() async {
    emit(const CourseDetailsState.loading());
    final result = await useCase();
    emit(
      result.fold(
        (failure) => const CourseDetailsState.error(
            errorMessage: 'حدث خطأ ما الرجاء المححاولة لاحقاً'),
        (data) => CourseDetailsState.courseDetailedFetched(courseDetails: data),
      ),
    );
  }

  void mockReservationAction() async {
    emit(const CourseDetailsState.loading());
    Future.delayed(const Duration(
      seconds: 2,
    ));
    emit(const CourseDetailsState.reservationDone());
  }
}
