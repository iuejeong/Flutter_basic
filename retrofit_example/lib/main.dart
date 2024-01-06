import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofit_example/api/rest_client.dart';
import 'package:retrofit_example/model/task.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: FutureBuilder<List<Task>>(
        future: getTasks(), 
        builder: (context, snapshot) {

          if(snapshot.hasData == false) {
            return const Center(child: CircularProgressIndicator());
          }
      
          if(snapshot.data!.isEmpty) {
            return const Center(child: Text('데이터가 존재하지 않습니다.'));
          }

          // 스크롤 내려갈 때 마다 새로 List를 새로 빌드함. 
          // 그래서 List 용량이 클 경우 용이함.
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              var item = snapshot.data![index];
              String? id = item.id;
              String? avatar = item.avatar;
              String noAvatar=
              'https://buffer.com/library/content/images/2023/09/instagram-image-size.jpg';
              String? name = item.name;
              String? createdAt = item.createdAt;
              return Card(
                child: ListTile(
                  leading: Text('$id'),
                  title: Text('$name'),
                  subtitle: Text('$createdAt'),
                  trailing: Image.network(
                    avatar ?? noAvatar,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.network(
                        noAvatar
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

Future<List<Task>> getTasks() async {
  final client = RestClient(Dio(    
    BaseOptions(
      baseUrl:'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/',
      headers: { 'Authorization' : 'Bearer Token' },
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      )
    )
  );
  var result = await client.getTasks();
  return result;
}