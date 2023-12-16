import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());  // MaterialApp이 return이 되어 실행이 됨.
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '플러터 앱',
      home: MyHomePage(title: 'Flutter Basic'),
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

  // 변수는 여기서 선언해야 됨.
  int count = 0;

  @override
  Widget build(BuildContext context) {
    // print(widget.title);       widget.을 치면 부모 클래스의 title을 가지고 올 수 있음
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: MyWidgets()
        ),
      // body: SafeArea(
      //   child: Center(
      //     child: Text(count.toString()),
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     setState(() {
      //       // 수행하고 Scaffold 부분이 리빌드
      //       count++;
      //     });
      //   },
      //   child: const Icon(Icons.add),
      //   ),
    );
  }
}

// single child widget

// 1. Container()**
// width
// height
// color !주의
// border(decoration)
// margin
// padding


// 2. SizedBox  크기만 필요한 경우에 사용하는 것을 권장.
// width
// height


// 3. Padding
// padding

// 4.Text
// data
// style
// maxLines
// overflow


// 5. Icon
// iconData
// color
// size


// 6. Center (중앙에 위치)


// 7.Align (정렬)
// alignMent: Alignment.bottomCenter

// 8.Appbar


// 9. button


// 9-1.ElebatedButton


// 9-2.OutlinedButton


// 9-3.TextButton


// 10. PlaceHolder  (배치를 잡아놓고 세팅을 할 때 쓰임)

// 11. Divider 구분선

// 12. CircularProgressIndicator 로딩바

// 13. Clip
// 13-1. ClipOval - 타원형
// 13-2. ClipRRect - 원형
// 13-3. ClipRect - 사각형
// 13-4. CircleAvatar - 원형


// 14.
// Opacity(투명도) - 사진 100% 투명(child 구현은 됨)
// Visibility(보이게 할지 말지) - true or false로 false면 자식 위젯 랜더링 x
// Offstage(공간에서 제외 시킬 건지) - 자식 위젯 랜더링 o, 보이지는 않게 처리

// 16. SingleChildScrollView(스크롤 기능)

// 17. Expanded

class MyWidgets extends StatelessWidget {
  const MyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
        String imageUrl=
        'https://buffer.com/library/content/images/2023/09/instagram-image-size.jpg';

    /*  
    ex) 1. Container

    return Container(
      width: 200,
      height: 200,
      //! 사용하면 안 됨
      // color: Colors.blue,
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.blue
      ),
      padding: EdgeInsets.all(30),
      // margin: EdgeInsets.all(8),
        child: Container(
          width: 50,
          height: 50,
          color: Colors.red,
        ),
    );
    */

    
    /*
    ex) 2. SizedBox

    return SizedBox(
      width: 200,
      height: 200,
      child: ColoredBox(color: Colors.purple),
    );
    */

    /*
    ex) 3. Padding

    return Padding(padding: EdgeInsets.all(30));
    */

    /*
    ex) 4. Text

    return Container(
      width: 100,
      height: 400,
      decoration: BoxDecoration(border: Border.all()),
      child: Text(
      '문자입니다.문자입니다.문자입니다.', 
      style: TextStyle(
        fontSize: 30, 
        fontWeight: FontWeight.bold, 
        color: Colors.blue,
        fontFamily: 'Trajan Pro',    // pubspec.yaml 77번째 줄 참고
        height: 1.0,
        ),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
    */
    
    /*
    ex) 5. Icon

    return Icon(
      Icons.account_tree_rounded,
      color: Colors.red,
      size: 50,
      );
    */

    /*
    ex) 8. AppBar

    return Scaffold(
      appBar: AppBar(
        title: Text('제목'),
        centerTitle: true,
        // 첫 번째 화면 x 두 번째 화면
        leading: Icon(Icons.handshake),  // flutter에서 이전 화면으로 가는 기능을 지원해줌
        actions: [
          Icon(Icons.settings),
          SizedBox(width: 8),
        ],
      ),
    );
    */

    /*
    ex) 9-1. ElevatedButton

    return ElevatedButton(
      onPressed: () {
        print('버튼 클릭!');
    }, 
    child: Text('Elevated 버튼'),
    );
    */

    /*
    ex) 9-2. OutlinedButton
    return OutlinedButton(
      onPressed: () {
        print('버튼 클릭!');
    }, 
    child: Text('OutlinedButton'),
    );
    */

    /*
    ex) 9-3. TextButton

    return TextButton(
      onPressed: () {
        print('버튼 클릭!');
    }, 
    child: Text('TextButton'),
    );
    */

    /*
    ex) 10. Placeholder

    return Placeholder();
    */

    /*
    ex) 11. Divider

    return Divider();
    */

    /*
    ex) 12. CircularProgressIndicator

    return CircularProgressIndicator();
    */

    
    /*
    ex) 13-1. ClipOval

    return ClipOval(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      )
    );
    */
    
    /*
    ex) 13-2. ClipRRect

    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: SizedBox(
        width: 100,
        height: 100,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      )
    );
    */

    /*
    ex) 13-3. ClipRect
    return ClipRect(
      child: SizedBox(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      )
    );
    */

    /*    
    ex) 13-4. CircleAvatar

    return CircleAvatar(
      backgroundImage: NetworkImage(imageUrl),
    );
    */

    /*    
    ex) 15. singleChildScrollView

      return Container(
        decoration: BoxDecoration(border: Border.all()),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('111111111111'),
              Text('222222222222'),
              Text('333333333333'),
              Text('111111111111'),
              Text('222222222222'),
              Text('333333333333'),
              Text('111111111111'),
              Text('222222222222'),
              Text('333333333333'),
              Text('111111111111'),
              Text('222222222222'),
              Text('333333333333'),
              Text('111111111111'),
              Text('222222222222'),
              Text('333333333333'),
              Text('111111111111'),
              Text('222222222222'),
              Text('333333333333'),
              Text('111111111111'),
              Text('222222222222'),
            ],
          ),
        ),
    );
    */

    /*    
    ex) 16. Spacer

      return Container(
        decoration: BoxDecoration(border: Border.all()),
        child: SingleChildScrollView(
          child: Row(
            children: [
              ChildWidget(color: Colors.red),
              Spacer(),
              ChildWidget(color: Colors.green),
            ],
          ),
        ),
    );
    */

    /*    
    ex) 17. Expanded
      return Container(
        decoration: BoxDecoration(border: Border.all()),
          child: Row(
            children: [
              Expanded(
                flex: 20,
                child: ChildWidget(color: Colors.red),
              ),
              Expanded(
                flex: 80,
                child: ChildWidget(color: Colors.blue),
              ),
            ],
          ),
    );
    */


// multiple widget


// 1. row - 가로축


// 2. column - 세로축


// 3. stack - z-indx와 같음


// 4. wrap


// 5. grid


/*
ex) 1. Row

  return Container(
        decoration: BoxDecoration(border: Border.all()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,  // 가로축에 대한 정렬(기본 값으로 왼쪽에서 시작)
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,                         // 세로축에 대한 정렬
          children: [
            ChildWidget(color: Colors.red,),
            ChildWidget2(color: Colors.green,),
            ChildWidget(color: Colors.blue,),
          ],
      ),
  );
  */

  /*
  ex) 2. Column

    return Container(
        decoration: BoxDecoration(border: Border.all()),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChildWidget(color: Colors.red,),
            ChildWidget2(color: Colors.green,),
            ChildWidget(color: Colors.blue,),
          ],
      ),
  );
  */

  /*
  ex) 3. stack

    return Container(
        decoration: BoxDecoration(border: Border.all()),
        child: Stack(
          children: [
            ChildWidget2(color: Colors.red,),
            // ChildWidget(color: Colors.green,),
            Positioned(
              right: 0,
              bottom: 30,
              child: ChildWidget(color: Colors.green,),
            ),
            Positioned(
              left: 0,
              bottom: 30,
              child: ChildWidget(color: Colors.yellow,),
            ),
            Positioned(
              left: 30,
              bottom: 50,
              child: ChildWidget(color: Colors.blue,),
            ),
          ],
      ),
  );
  */

  /*
  ex) 4. Wrap

      return Container(
        decoration: BoxDecoration(border: Border.all()),
        child: Wrap(
          children: [
            ChildWidget(color: Colors.red),
            ChildWidget(color: Colors.blue),
            ChildWidget(color: Colors.green),
            ChildWidget(color: Colors.red),
            ChildWidget(color: Colors.blue),
            ChildWidget(color: Colors.green),
            ChildWidget(color: Colors.red),
            ChildWidget(color: Colors.blue),
            ChildWidget(color: Colors.green),
            ChildWidget(color: Colors.red),
            ChildWidget(color: Colors.blue),
            ChildWidget(color: Colors.green),
          ],
      ),
  );
  */

  
  // ex) 5. Grid

        return Container(
        decoration: BoxDecoration(border: Border.all()),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            ChildWidget(color: Colors.red),
            ChildWidget(color: Colors.blue),
            ChildWidget(color: Colors.green),
            ChildWidget(color: Colors.red),
            ChildWidget(color: Colors.blue),
            ChildWidget(color: Colors.green),
            ChildWidget(color: Colors.red),
            ChildWidget(color: Colors.blue),
            ChildWidget(color: Colors.green),
          ],
      ),
  );
  


  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: color,
    );
  }
}

class ChildWidget2 extends StatelessWidget {
  const ChildWidget2({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: color,
    );
  }
}




/*

// StatelessWidget - 상태가 없는 위젯
// StatefulWidget - 상태가 있는 위젯

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // 앱 전체의 테마를 의미
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),  // fromSeed는 baseColor를 의미
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // const MyHomePage({super.key, this.title = '제목'});
  // const MyHomePage({super.key, this.title});


  final String title;
  // final String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;   // _변수는 private

  void _incrementCounter() {
    setState(() {
      _counter++;
      // counter = 0
      // counter = 1 & setState
      // rebuild
    });
  }

  @override
  Widget build(BuildContext context) {
    print('counter:$_counter');
    // Scaffold는 Canvas와 같은 역할
    // 
    // AppBar
    // Body
    // BottomSheet
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

*/
