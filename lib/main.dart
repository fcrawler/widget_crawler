import 'package:flutter/material.dart';
import 'package:widget_crawler/asyncwidget/future_page.dart';
import 'package:widget_crawler/asyncwidget/stream_page.dart';
import 'package:widget_crawler/container/container_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Widget Crawler'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _gotoRout(BuildContext context, Widget route) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return route;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () => _gotoRout(context, ContainerPage()),
            title: Center(
              child: Text('Container'),
            ),
          ),
          ListTile(
            onTap: () => _gotoRout(context, FuturePage()),
            title: Center(
              child: Text('FutureWidget'),
            ),
          ),
          ListTile(
            onTap: () => _gotoRout(context, StreamPage()),
            title: Center(
              child: Text('StreamWidget'),
            ),
          )
        ],
      ),
    );
  }
}
