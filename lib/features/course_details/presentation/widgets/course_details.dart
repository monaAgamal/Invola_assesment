import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:invola_assesment/features/course_details/domain/entities/course_details.dart';
import 'package:invola_assesment/features/course_details/presentation/cubit/course_details_cubit.dart';
import 'package:invola_assesment/features/course_details/presentation/cubit/course_details_state.dart';
import 'package:invola_assesment/features/course_details/presentation/widgets/app_dialoge.dart';
import 'package:invola_assesment/features/course_details/presentation/widgets/main_button.dart';
import 'package:invola_assesment/features/course_details/presentation/widgets/image_slider.dart';
import 'package:invola_assesment/features/address_on_map/presentation/pages/map_page.dart';

class CourseDetailsWidget extends StatelessWidget {
  final CourseDetails courseDetails;

  const CourseDetailsWidget({
    Key? key,
    required this.courseDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CourseDetailsCubit>(context, listen: false);
    final dateFormatter = DateFormat.MMMEd('ar');
    final String timeFormat =
        DateFormat("HH:mm a", "ar").format(courseDetails.courseDate);
    final time = timeFormat.contains(RegExp(r'م'))
        ? timeFormat.replaceAll(RegExp(r'م'), "مساءاً")
        : timeFormat.replaceAll(RegExp(r'ص'), "صباحاً");

    return BlocListener<CourseDetailsCubit, CourseDetailsState>(
      listenWhen: (prevState, currentState) =>
          currentState is ActionError || currentState is ReservationDone,
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          actionError: (errorMsg) {
            showDialog(
              context: context,
              builder: (context) => AppDialog(
                title: errorMsg,
                dialogContent: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/error.svg",
                      height: 84,
                    ),
                    const SizedBox(height: 16),
                    MainButton(
                      label: "المحاولة مرة أخري",
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            );
          },
          reservationDone: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Center(
                    child: Text(
                      "تم الحجز بنجاح سيتم التواصل معك قريباً",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/celebration-spark.svg",
                        height: 84,
                      ),
                      const SizedBox(height: 16),
                      MainButton(
                        label: "العودة للتصفح ",
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
      child: ListView(
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
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Divider()),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/calendar.svg",
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        "${dateFormatter.format(courseDetails.courseDate)},$time",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => MapPage(
                          position: courseDetails.courseLocation,
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/location.svg',
                        color: Colors.black,
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        courseDetails.courseAddress,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Row(
              children: [
                CircleAvatar(
                  minRadius: 20,
                  maxRadius: 20,
                  backgroundColor: Colors.transparent,
                  child: CachedNetworkImage(
                    imageUrl: courseDetails.trainerImg,
                    errorWidget: (_, __, ___) =>
                        SvgPicture.asset('assets/svg/user.svg'),
                    placeholder: (_, __) =>
                        SvgPicture.asset('assets/svg/user.svg'),
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
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Text(courseDetails.trainerInfo),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Divider(),
          ),
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Divider(),
          ),
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
            child: BlocBuilder<CourseDetailsCubit, CourseDetailsState>(
              bloc: bloc,
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => MainButton(
                    label: "قم بالحجز الأن",
                    onTap: () {},
                    isLoading: true,
                  ),
                  orElse: () => MainButton(
                    label: "قم بالحجز الأن",
                    onTap: () {
                      bloc.mockReservationAction();
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
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
            Text("الحجز المميز "),
            Text("__"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("الحجز السريع"),
            Text("__"),
          ],
        ),
      ],
    );
  }
}
