import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white
          ),),
      ),
      body: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: [
                FlutterLogo(
                  size: 70,
                ),
                Text(
                  'Flutter',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w100
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
           ),
           SizedBox(
            height: 10,
           ),
            TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
           ),
           SizedBox(
            height: 10,
           ),
           TextButton(
            onPressed: (){},
            child: Text(
              'Forgot Password',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 230,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                onPressed: (){},
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),),
                ),
            ),
            Spacer(),
            TextButton(
            onPressed: (){},
            child: Text(
              'New User? Create Account',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12
              ),),
            ),
          ],
        ),
      ));
  }
}
