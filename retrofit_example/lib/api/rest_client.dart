import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit_example/model/task.dart';

part 'rest_client.g.dart';  // 만든 파일명이랑 같아야 함.

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  // /tasks?id=123
  @GET('/tasks')
  Future<Task> getTask1(@Query('id') id);
  
  // /tasks? 뒤에 model이 들어감.
  @GET('/tasks')
  Future<Task> getTask2(@Queries() task);
  
  @GET('/tasks')
  Future<List<Task>> getTasks();

  @POST('/tasks')
  Future<Task> createTask(@Body() Task task);

  @PUT('/tasks/{id}')
  Future<Task> updateTask(@Path() String id, @Body() Task task);

  @DELETE('/tasks/{id}')  // 로그인한 토큰 정보가 담겨 있어야 함.
  Future<void> deleteTask(@Path() String id);
}
