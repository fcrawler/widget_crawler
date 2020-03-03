import 'package:flutter/material.dart';

class FuturePage extends StatefulWidget {
  FuturePage({Key key}) : super(key: key);

  @override
  _FuturePageState createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  Future<String> _calculation = Future<String>.delayed(
    Duration(seconds: 2),
    () => 'Data Loaded',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureWidget"),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: _calculation, // FutureBuilder依赖的Future
          initialData: "This is the default value",
          builder: _generateContentWidget,
        ),
      ),
    );
  }

  Widget _generateContentWidget(
      BuildContext context, AsyncSnapshot<String> snapshot) {
    Widget widget;

    // 请求已结束
    if (snapshot.connectionState == ConnectionState.done) {
      if (snapshot.hasError) {
        // 请求失败，显示错误
        widget = Text("Error: ${snapshot.error}");
      } else {
        // 请求成功，显示数据
        widget = Text("Contents: ${snapshot.data}");
      }
    } else {
      // 请求未结束，显示loading
      if (snapshot.hasData) {
        widget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Contents: ${snapshot.data}"),
            CircularProgressIndicator()
          ],
        );
//        widget = Stack(
//          alignment: Alignment.center,
//          children: <Widget>[
//            Text("Contents: ${snapshot.data}"),
//            CircularProgressIndicator()
//          ],
//        );
      } else {
        widget = CircularProgressIndicator();
      }
    }

    return widget;
  }
}
