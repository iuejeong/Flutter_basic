import 'package:flutter/material.dart';


// Scaffold
// AppBar + leading
// Text
// Grid(crossAxis : 2)
// Card(가칭) - Container, Column, CircleAvartar, Icon
void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter',
      home: MyHomePage(title: 'Categories')
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
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_rounded),
      ),
      body: MyWidgetCategories(),
    );
  }
}

class MyWidgetCategories extends StatelessWidget {
  const MyWidgetCategories({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
      margin: EdgeInsets.all(20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: TextStyle(
              fontSize: 25, 
              fontWeight: FontWeight.bold, 
              )
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: GridView.count(
              crossAxisCount: 2,
              children: [
                Card(
                  color: Colors.red,
                  child: InkWell(   // Click 이벤트
                    onTap: () {
                      print("aaa");
                    },
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.ac_unit),
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Text('Politics',      
                                        style: TextStyle(
                                        fontSize: 17, 
                                        fontWeight: FontWeight.bold, 
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
                Card(
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.ac_unit),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Text('Politics',      
                                      style: TextStyle(
                                      fontSize: 17, 
                                      fontWeight: FontWeight.bold, 
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                Card(
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.ac_unit),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Text('Politics',      
                                      style: TextStyle(
                                      fontSize: 17, 
                                      fontWeight: FontWeight.bold, 
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                Card(
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.ac_unit),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Text('Politics',      
                                      style: TextStyle(
                                      fontSize: 17, 
                                      fontWeight: FontWeight.bold, 
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                Card(
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.ac_unit),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Text('Politics',      
                                      style: TextStyle(
                                      fontSize: 17, 
                                      fontWeight: FontWeight.bold, 
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                Card(
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.ac_unit),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Text('Politics',      
                                      style: TextStyle(
                                      fontSize: 17, 
                                      fontWeight: FontWeight.bold, 
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              ],))
          ],
        ),
    );
  }
}


