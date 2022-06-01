import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invola_assesment/core/app_theme/theme.dart';
import 'package:invola_assesment/di/injection_container.dart';
import 'package:invola_assesment/features/course_details/presentation/cubit/course_details_cubit.dart';
import 'package:invola_assesment/features/course_details/presentation/pages/course_details_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarBrightness: Brightness.dark,
    ),
  );
  await configure();
  configure();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Invola Task',
      theme: AppTheme.theme,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'EG'), // English, no country code
      ],
      home: BlocProvider(
        create: (_) => getIt<CourseDetailsCubit>(),
        child: const CourseDetailsPage(),
      ),
    );
  }
}
