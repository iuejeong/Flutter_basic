import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellScreen extends StatelessWidget {
  const ShellScreen({
    Key? key, 
    required this.child,
    }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: titleFuc(context),
      ),
      body: child,
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
        currentIndex: indexfuc(context),
        onTap: (value) {
          if(value == 0) {
            context.go('/home', extra: value);
          }else if (value == 1) {
            context.go('/business', extra: value);
          }else if (value == 2) {
            context.go('/school', extra: value);
          }
        },        
      ),
    );
  }

  Widget titleFuc(context) {

    String uri = GoRouterState.of(context).uri.toString();

    if(uri == '/home') {
      return Text(
        'Home',
        style: TextStyle(
            color: Colors.white,
          ),
        );
    }else if(uri == '/business') {
      return Text(
        'Business',
        style: TextStyle(
            color: Colors.white,
          ),
        );
    }else if(uri == '/school') {
      return Text(
        'School',
        style: TextStyle(
            color: Colors.white,
          ),
        );
    }

    return Text(
        'Home',
        style: TextStyle(
            color: Colors.white,
          ),
      );

  }

  int indexfuc(BuildContext context){

    String uri = GoRouterState.of(context).uri.toString();

    if(uri == '/home') {
      return 0;
    }else if(uri == '/business') {
      return 1;
    }else if(uri == '/school') {
      return 2;
    }

    return 0;

  }

}
