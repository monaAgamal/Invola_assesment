import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invola_assesment/di/injection_container.dart';
import 'package:invola_assesment/features/course_details/presentation/cubit/course_details_cubit.dart';
import 'package:invola_assesment/features/course_details/presentation/cubit/course_details_state.dart';
import 'package:invola_assesment/features/course_details/presentation/widgets/course_details.dart';
import 'package:invola_assesment/features/course_details/presentation/widgets/loading_widget.dart';
import 'package:invola_assesment/features/course_details/presentation/widgets/error_widget.dart'
    as app_error_widget;

class CourseDetailsPage extends StatefulWidget {
  const CourseDetailsPage({Key? key}) : super(key: key);

  @override
  State<CourseDetailsPage> createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  late final CourseDetailsCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<CourseDetailsCubit>();
    _cubit.fetchCourseDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: BlocBuilder<CourseDetailsCubit, CourseDetailsState>(
          bloc: _cubit,
          builder: (context, state) {
            return state.maybeWhen(
              courseDetailedFetched: (courseDetailed) => CourseDetailsWidget(
                courseDetails: courseDetailed,
              ),
              error: (message) =>
                  app_error_widget.ErrorWidget(errorMessage: message),
              orElse: () => const LoadingWidget(),
            );
          },
        ),
      ),
    );
  }
}
