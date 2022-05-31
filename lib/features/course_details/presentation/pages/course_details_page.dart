import 'package:flutter/material.dart';
import 'package:invola_assesment/features/course_details/presentation/widgets/loading_widget.dart';
import 'package:invola_assesment/features/course_details/presentation/widgets/error_widget.dart'
    as app_error_widget;

class CourseDetailsPage extends StatefulWidget {
  const CourseDetailsPage({Key? key}) : super(key: key);

  @override
  State<CourseDetailsPage> createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: app_error_widget.ErrorWidget(
          errorMessage: "حدث خطأ في الاتصال بالانترنت",
        ),
      ),
    );
  }
}
