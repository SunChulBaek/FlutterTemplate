import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class ApiModule {

  @injectable
  Dio dio(
    BaseOptions options,
    @Named("logger") Interceptor logger,
  ) => Dio(options)
    ..interceptors.add(logger);

  @injectable
  BaseOptions options(
    Map<String, dynamic> headers
  ) => BaseOptions(headers: headers);

  @injectable
  Map<String, dynamic> get headers => { };

  @Injectable(as: Interceptor)
  @Named("logger")
  PrettyDioLogger get logger => PrettyDioLogger(
      requestHeader: false,
      requestBody: true,
      responseHeader: false,
      responseBody: true,
      error: true,
      compact: true,
      maxWidth: 90
  );
}