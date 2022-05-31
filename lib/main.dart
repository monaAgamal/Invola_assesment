import 'package:flutter/material.dart';
import 'package:invola_assesment/core/app_theme/theme.dart';
import 'package:invola_assesment/features/course_details/presentation/cubit/course_details_cubit.dart';
import 'package:invola_assesment/features/course_details/presentation/pages/course_details_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invola Task',
      theme: AppTheme.theme,
      // home: BlocProvider(
      //   create: (_) => CourseDetailsCubit(),
      //   child: const CourseDetailsPage(),
      // ),
    );
  }
}
