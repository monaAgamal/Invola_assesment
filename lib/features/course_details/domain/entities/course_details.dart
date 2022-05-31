import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:invola_assesment/features/course_details/domain/entities/reserve_type.dart';

class CourseDetails extends Equatable {
  final int courseId;
  final List<String> imageUrls;

  final String courseName;

  final String interest;

  final String courseAddress;

  final DateTime courseDate;

  final Position courseLocation;

  final String trainerName;

  final String trainerImg;

  final String trainerInfo;

  final String courseExtraInfo;

  final int coursePrice;

  final bool isFavourite;
  final List<ReserveType> reserveType;

  const CourseDetails({
    required this.courseId,
    required this.reserveType,
    required this.imageUrls,
    required this.courseName,
    required this.interest,
    required this.courseAddress,
    required this.courseDate,
    required this.courseLocation,
    required this.trainerName,
    required this.trainerImg,
    required this.trainerInfo,
    required this.courseExtraInfo,
    required this.coursePrice,
    required this.isFavourite,
  });

  @override
  List<Object?> get props => [
        courseId,
        courseName,
        interest,
        courseAddress,
        courseDate,
        courseLocation,
        trainerName,
        trainerImg,
        trainerInfo,
        courseExtraInfo,
        coursePrice,
        isFavourite,
      ];
}
