import 'package:flutter/material.dart';
import 'package:invola_assesment/features/course_details/presentation/widgets/loading_widget.dart';

class CourseDetailsPage extends StatefulWidget {
  const CourseDetailsPage({Key? key}) : super(key: key);

  @override
  State<CourseDetailsPage> createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoadingWidget(),
    );
  }
}
