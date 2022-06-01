// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/course_details/data/data_source/course_details_datasource.dart'
    as _i5;
import '../features/course_details/data/data_source/course_details_datasource_impl.dart'
    as _i6;
import '../features/course_details/data/service/course_details_api_service.dart'
    as _i4;
import '../features/course_details/domain/course_details_repository/course_details_repository.dart'
    as _i7;
import '../features/course_details/domain/course_details_repository/course_details_repository_impl.dart'
    as _i8;
import '../features/course_details/domain/usecases/fetch_course_details_usecase.dart'
    as _i9;
import '../features/course_details/presentation/cubit/course_details_cubit.dart'
    as _i10;
import 'app_module.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.lazySingleton<_i3.Dio>(() => appModule.dio);
  gh.lazySingleton<_i4.CourseDetailsApiService>(
      () => _i4.CourseDetailsApiService(get<_i3.Dio>()));
  gh.lazySingleton<_i5.CourseDetailsDataSource>(() =>
      _i6.CourseDetailsDataSourceImpl(get<_i4.CourseDetailsApiService>()));
  gh.lazySingleton<_i7.CourseDetailsRepository>(() =>
      _i8.CourseDetailsRepositoryImpl(get<_i5.CourseDetailsDataSource>()));
  gh.factory<_i9.FetchCourseDetailsUseCase>(() => _i9.FetchCourseDetailsUseCase(
      courseDetailsRepository: get<_i7.CourseDetailsRepository>()));
  gh.factory<_i10.CourseDetailsCubit>(
      () => _i10.CourseDetailsCubit(get<_i9.FetchCourseDetailsUseCase>()));
  return get;
}

class _$AppModule extends _i11.AppModule {}
