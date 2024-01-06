import 'package:dio/dio.dart';
import 'package:jsonplaceholder/model/user.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';  // 만든 파일명이랑 같아야 함.

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  
  @GET('/users')
  Future<List<User>> getUsers();
}
