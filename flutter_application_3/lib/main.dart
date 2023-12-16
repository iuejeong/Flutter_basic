import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidget(),
    );
  }
}


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://www.freecodecamp.org/news/content/images/2022/09/jonatan-pie-3l3RwQdHRHg-unsplash.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        body: MyWidget2(),
      ),
    );
  }
}

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Container(
                width: 200,
                child: Text(
              'MaterialKit',
              style: TextStyle(
                fontSize: 50, 
                color: Colors.white,
                height: 1.1,
              ),
            ),
          ),
          Container(
            child: Text(
              'aaaaAAAAAAAAAAAAAAAAAAAAAAAAAAAAA',
              style: TextStyle(
                fontSize: 15, 
                color: Colors.grey,
                height: 5.0,
              ),
            ),
          ),
          Container(
            child: Row(
            children: [
              Icon(
                Icons.apple,
                size: 50,
                color: Colors.white,
                ),
              Text(
                'iOS',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.android,
                size: 50,
                color: Colors.white,
              ),
              Text(
                'android',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              color: Colors.blue,
              width: 500,
              child: TextButton(
              onPressed: () {
                  
                }, 
              child: Text('GET STARTED')
            ),
          )
        ],
      )
    );
  }
}
