import 'package:geolocator/geolocator.dart';
import 'package:invola_assesment/features/course_details/data/models/course_details_api_response.dart';
import 'package:invola_assesment/features/course_details/domain/entities/course_details.dart';
import 'package:invola_assesment/features/course_details/domain/entities/reserve_type.dart'
    as reserve_type;

extension CourseDetailsToDomain on CourseDetailsApiResponse {
  CourseDetails domain() {
    return CourseDetails(
      courseId: id,
      interest: interest,
      imageUrls: List.from(img),
      courseAddress: address,
      courseDate: date,
      courseExtraInfo: occasionDetail,
      courseLocation: Position(
        speedAccuracy: 0.0,
        timestamp: DateTime.now(),
        floor: 0,
        isMocked: false,
        latitude: double.parse(latitude),
        longitude: double.parse(longitude),
        accuracy: .021,
        altitude: 0.0,
        heading: 0.0,
        speed: 0.0,
      ),
      coursePrice: price,
      courseName: title,
      isFavourite: isLiked,
      trainerImg: trainerImg,
      trainerName: trainerName,
      trainerInfo: trainerInfo,
      reserveType: reserveTypes
          .map(
            (e) => reserve_type.ReserveType(
              id: e.id,
              count: e.count,
              name: e.name,
              price: e.price,
            ),
          )
          .toList(),
    );
  }
}
