import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    theme: ThemeData(
      useMaterial3: false,
    ),
    // home: const NavigatorPage(),
    initialRoute: '/',
    routes: {
      '/': (context) => const NavigatorPage(),
      '/first':(context) => const APage(),
      '/second': (context) => const BPage(),
      '/third': (context) => const CPage(),
    },
  ));
}

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {

  int currentIndex = 0;

  List<Widget> pages = [
    HomePage(),
    BusinessPage(),
    SchoolPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar')
      ),
      body: Center(child: pages[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'business',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'school',
            ),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
            print('currentIndex:$currentIndex');
          });
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        // push     - 쌓임
        // pop      - 빠져나감 (뒤로가기랑 똑같은 기능)
        // replace  - A -> B로 교체

        // Navigator.push(context, route);
        // Navigator.pop(context);
        // Navigator.pushReplacement(context, newRoute);

        Navigator.pushNamed(
          context, '/first' 
          );

        // 호출 - pushNamed()

        // 선언 - MaterialApp
        // routes: {
        //  '/': (context) => const FirstScreen(),
        //  '/second': (contxt) => const SecondScreen(),
        // }

      },
      child: Text(
        'Index: 0: Home',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Business');
  }
}
class SchoolPage extends StatelessWidget {
  const SchoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('School');
  }
}


class APage extends StatelessWidget {
  const APage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: (){
                showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return AlertDialog(
                      title: Text('제목1'),
                      content: Text('내용1'),
                      actions: [
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, 
                          child: Text('ok')
                        ),
                      ],
                    );
                  },
                );
              }, 
              child: Text('ok'),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () async {
                var result = await showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return AlertDialog(
                      title: Text('제목2'),
                      content: Text('내용2'),
                      actions: [
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context, true);
                          }, 
                          child: Text('ok')
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context, false);
                          }, 
                          child: Text('cancel')
                        ),
                      ],
                    );
                  },
                );
              print(result);
              }, 
              child: Text('ok&cancel'),
            ),
            // ElevatedButton(
            //   onPressed: (){
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       const SnackBar(
            //         content: Text('실패입니다.'),
            //         backgroundColor: Colors.red,
            //         duration: Duration(seconds: 2),
            //         )
            //     );
            //   }, 
            //   child: Text('실패 메시지'),
            // ),

          ],
        ),
        
        // InkWell(
        //   onTap: () {
        //     Navigator.pushNamed(
        //       context, '/second'
        //     );
        //     // Navigator.push(
        //     // context, 
        //     // MaterialPageRoute(
        //     //   builder: (BuildContext context) => const BPage()
        //     //   ),
        //     // );
        //   },
        //   child: Text(
        //     'Apage'
        //   ),
        // )
      ),
    );
  }
}
class BPage extends StatelessWidget {
  const BPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(
              context, '/third'
            );
          },
          child: Text(
            'Bpage'
          ),
        )
      ),
    );
  }
}
class CPage extends StatelessWidget {
  const CPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(
              context, '/'
            );
          },
          child: Text(
            'Cpage'
          ),
        )
      ),
    );
  }
}


