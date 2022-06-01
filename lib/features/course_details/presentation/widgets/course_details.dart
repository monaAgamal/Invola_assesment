import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:invola_assesment/features/course_details/domain/entities/course_details.dart';
import 'package:invola_assesment/features/course_details/presentation/widgets/main_button.dart';
import 'package:invola_assesment/features/course_details/presentation/widgets/image_slider.dart';

class CourseDetailsWidget extends StatelessWidget {
  final CourseDetails courseDetails;

  const CourseDetailsWidget({
    Key? key,
    required this.courseDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat.MMMEd();
    return ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: ImageSlider(
            isFavourite: courseDetails.isFavourite,
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("#${courseDetails.interest}"),
              Text(
                courseDetails.courseName,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.calendar_month),
                  const SizedBox(width: 12),
                  Text(
                    dateFormatter.format(courseDetails.courseDate),
                  ),
                ],
              ),
              GestureDetector(
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/location.svg',
                      color: Colors.black,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      courseDetails.courseAddress,
                    ),
                  ],
                ),
              ),
              const Divider(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Row(
            children: [
              CircleAvatar(
                minRadius: 20,
                maxRadius: 20,
                backgroundColor: Colors.red,
                child: Image.network(
                  courseDetails.trainerImg,
                ),
              ),
              const SizedBox(width: 12),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(courseDetails.trainerName),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 60.0),
          child: Text(courseDetails.trainerInfo),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("عن الدورة"),
              Text(courseDetails.courseExtraInfo),
            ],
          ),
        ),
        const SizedBox(height: 12),
        const Divider(),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ReservationSummary(
            courseDetails: courseDetails,
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: MainButton(
            label: "قم بالحجز الأن",
            onTap: () {},
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

class ReservationSummary extends StatelessWidget {
  final CourseDetails courseDetails;

  const ReservationSummary({
    Key? key,
    required this.courseDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text("تكلفة الدورة"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("الحجز العادي "),
            Text(
              courseDetails.reserveType.first.price.toString(),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("الحجز العادي "),
            Text("40 SAR"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("الحجز العادي "),
            Text("40 SAR"),
          ],
        ),
      ],
    );
  }
}
