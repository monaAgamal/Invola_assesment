import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  Dio get dio {
    final client = Dio(
      BaseOptions(
        baseUrl: "https://run.mocky.io",
        contentType: "application/json",
      ),
    );
    client.interceptors.add(
      LogInterceptor(),
    );
    return client;
  }
}
