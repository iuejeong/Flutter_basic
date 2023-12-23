import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    theme: ThemeData(
      useMaterial3: false,
    ),
    home: const NavigatorPage(),
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
    return Text('Home');
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


