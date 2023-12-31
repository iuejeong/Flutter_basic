import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jsonplaceholder/api/rest_client.dart';
import 'package:jsonplaceholder/model/todo.dart';
import 'package:jsonplaceholder/model/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Users(),
      home: MyWidget(),
    );
  }
}

// class Users extends StatelessWidget {
//   const Users({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder<List<User>>(
//         future: getUsers(), 
//         builder: (context, snapshot) {
//           if(snapshot.hasData == false) {
//             return const Center(child: CircularProgressIndicator());
//           }
      
//           if(snapshot.data!.isEmpty) {
//             return const Center(child: Text('데이터가 존재하지 않습니다.'));
//           }

//           return ListView.builder(
//             itemCount: snapshot.data!.length,
//             itemBuilder: (context, index) {
//               var users = snapshot.data![index];
//               return Card(
//                 child: ListTile(
//                   leading: Text('${users.id}'),
//                   title: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('이름: ${users.name}'),
//                       SizedBox(height: 20,),
//                       Text('닉네임: ${users.username}'),
//                       SizedBox(height: 20,),
//                       Text('이메일: ${users.email}'),
//                       SizedBox(height: 20,),
//                       Text(
//                         '소재지: ${users.address?.street} ${users.address?.suite} ${users.address?.city} ${users.address?.zipcode}',
//                         ),
//                       SizedBox(height: 20,),
//                       Text('위도: ${users.address?.geo?.lat}',),
//                       SizedBox(height: 20,),
//                       Text('경도: ${users.address?.geo?.lng}',),
//                       SizedBox(height: 20,),
//                       Text('휴대전화: ${users.phone}',),
//                       SizedBox(height: 20,),
//                       Text('바로가기: ${users.website}',),
//                       SizedBox(height: 20,),
//                       Text('기업명: ${users.company?.name}',),
//                       SizedBox(height: 20,),
//                       Text('기업 소개: ${users.company?.catchPhrase}',),
//                       SizedBox(height: 20,),
//                       Text('기업 목표: ${users.company?.bs}',),
//                     ],
//                   ), 
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


// Future<List<User>> getUsers() async {
//   final client = RestClient(Dio(    
//     BaseOptions(
//       baseUrl:'https://jsonplaceholder.typicode.com/',
//       )
//     )
//   );
//   var result = await client.getUsers();
//   return result;
// }

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => Todos();
}


class Todos extends State<MyWidget> {
  ScrollController controller = ScrollController();
  List<Todo> list = [];
  int page = 1;

  @override
  void initState() {
    super.initState();
    controller.addListener(() { 
      if(controller.position.pixels >= controller.position.maxScrollExtent * 0.85) {
        setState(() {
          page++;
          print(page);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Todo>>(
        future: getTodos(page), 
        builder: (context, snapshot) {
          if(snapshot.hasData == false) {
            return const Center(child: CircularProgressIndicator());
          }
      
          if(snapshot.data!.isEmpty) {
            return const Center(child: Text('데이터가 존재하지 않습니다.'));
          }

          list = [...list, ...snapshot.data!];
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              var todos = list[index];
              // var todos1 = list[index];
              return Card(
                child: ListTile(
                  leading: Text('${todos.id}'),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('userId: ${todos.userId}'),
                      SizedBox(height: 20,),
                      Text('id: ${todos.id}'),
                      SizedBox(height: 20,),
                      Text('title: ${todos.title}'),
                      SizedBox(height: 20,),
                      Text('completed: ${todos.completed}'),      
                    ],
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

Future<List<Todo>> getTodos(int page) async {

  final client = RestClient(Dio(    
    BaseOptions(
      baseUrl:'https://jsonplaceholder.typicode.com/',
      )
    )
  );
  var result = await client.getTodo(page);
  return result;
}
