import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key : key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //스카폴드 추가
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      // 드로워(서랍) 추가
      drawer: Drawer(
        // 리스크뷰 추가
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // 드로워해더 추가
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            // 리스크타일 추가
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // 네비게이터 팝을 통해 드로워를 담는다.
                Navigator.pop(context);
              },
            ),
            // 리스크타일 추가
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // 드로워를 담음
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
