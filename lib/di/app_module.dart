import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @lazySingleton
  Dio get dio {
    final client = Dio(
      BaseOptions(
        // connectTimeout: 30000,
        // receiveTimeout: 30000,
        baseUrl: "https://run.mocky.io",
        contentType: "application/json",
      ),
    );
    client.interceptors.add(
      LogInterceptor(
        error: true,
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );
    return client;
  }
}
