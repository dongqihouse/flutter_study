import 'package:flutter/material.dart';
import 'package:flutter_study/third/thrid_list_page.dart';
import 'package:flutter_study/widgets/scrollable/scrollable_page.dart';
import 'package:flutter_study/widgets/widgets_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MainMenuPage(),
    );
  }
}

class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter学习速记'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('常用的三方控件'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdListPage()),
              );
            },
          ),
          ListTile(
            title: Text('常用的官方控件'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WidgetsListPage(),
              ),
            ),
          ),
          ListTile(
            title: Text('Scrollable专题'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ScrollablePage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
