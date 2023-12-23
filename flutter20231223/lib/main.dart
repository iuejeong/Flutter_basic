import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<MyHomePage> {

  int currentIndex = 0;

  List<Widget> pages = [
    Login(),
    Register(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '로그인',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '회원가입',
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

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Login Page',
          style: TextStyle(
            color: Colors.white
          ),),
      ),
      body: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  final title = 'Login Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          '로그인 페이지',
          style: TextStyle(
            color: Colors.white
          )
        )
      ),
      body: SafeArea(
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
            onPressed: (){
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Register()
                    ),
                  );
                },
              );
            },
            child: Text(
              'New User? Create Account',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12
              ),),
            ),
          ],
        ),
      ))
    );
  }
}


class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          '회원가입 페이지',
          style: TextStyle(
            color: Colors.white
          ),
          )
      ),
      body:     SafeArea(
      child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                '회원가입',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),            
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 240,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '이메일',
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 100,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue
                      ),
                      onPressed: (){},
                      child: Text(
                        '중복 확인',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),),
                      ),
                  ),                  
                ],
              ),                      
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '비밀번호',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '비밀번호 확인',
                ),
              ),              
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '주소 입력',
                ),
              ),
              Spacer(),
              Container(
                width: 350,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                  ),
                  onPressed: (){
                  },
                  child: Text(
                    '회원가입 완료',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),),
                  ),
              ),                       
            ],
          ),
        )
      )
    );
  }
}

