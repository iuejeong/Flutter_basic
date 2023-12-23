import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyWidget()
  ));
}

// snapshot.hasData = false

// Future 정상 반환
// snapshot.hasData = true

// Future 오류
// snapshot.hasError

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: FutureBuilder<List<String>>(
        future: future(), 
        builder: (context, snapshot) {
          print('futureBuilder : ${snapshot.hasData}');

          if(snapshot.hasError) {
            // 오류
            return const Center(child: Text('오류 발생'));
          }

          if(snapshot.hasData == false) {
            // 로딩
            return const Center(child: CircularProgressIndicator());
          }
      
          if (snapshot.data!.isEmpty) {
            // 비어있는 경우

            return const Center(child: Text('데이터가 존재하지 않습니다.'));
          }

          // 결과물
          // return Center(child: Text(snapshot.data ?? '-'));
          return ListView(
            children: snapshot.data!.map((e) {
              return ListTile(
                leading: const FlutterLogo(),
                title: Text('Two-line ListTile($e)'),
                subtitle: const Text('Here is a second line'),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}

Future<List<String>> future() async {
  await Future.delayed(const Duration(seconds: 3));
  return [
    'aa1',
    'bb1',
    'cc1',
    'dd1',
    'ee1',
    'aa2',
    'bb2',
    'cc2',
    'dd2',
    'ee2',
  ];
}