import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invola_assesment/features/course_details/domain/entities/course_details.dart';

part "course_details_state.freezed.dart";

@freezed
abstract class CourseDetailsState with _$CourseDetailsState {
  const factory CourseDetailsState.initial() = Initial;

  const factory CourseDetailsState.loading() = Loading;

  const factory CourseDetailsState.courseDetailedFetched(
      {required CourseDetails courseDetails}) = courseDetailedFetched;

  const factory CourseDetailsState.error({required String errorMessage}) =
      Error;
}
