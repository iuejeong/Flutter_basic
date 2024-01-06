import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit_example/api/rest_client.dart';

final logger = Logger();

void main(List<String> args) async {
  // dio 생성
  final dio = Dio(
    BaseOptions(
      baseUrl:'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/',
      headers: { 'Authorization' : 'Bearer Token' },
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    )
  );

  // dio.interceptors.add(LogInterceptor()); // 요청 정보를 알 수 있음.
  dio.interceptors.add(PrettyDioLogger()); // 응답 정보를 알 수 있음.

  dio.interceptors.add(
    InterceptorsWrapper(    // 새로운 토큰을 발급 받을 때 등
      onRequest: (options, handler) {
        print('### onRequest');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        print('### onResponse');
        return handler.next(response);
      },
      onError: (error, handler) {
        print('### onError');

        // 1. 토큰 만료됨
        // 2. 토큰 재발급
        // return handler.resolve(error.response!);

        return handler.next(error);
      },
    )
  );

  // rest client 생성
  // DI 종속성 주입
  final client = RestClient(dio);

  var result = await client.getTasks();
  print(result);
}