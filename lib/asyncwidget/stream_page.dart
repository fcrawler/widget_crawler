import 'package:flutter/material.dart';

class StreamPage extends StatefulWidget {
  StreamPage({Key key}) : super(key: key);

  @override
  _StreamPageState createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {
  Stream<int> timerCount =
      Stream.periodic(Duration(seconds: 1), (count) => 30 - count).take(30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureWidget"),
      ),
      body: Center(
        child: StreamBuilder(
          stream: timerCount,
          builder: _generateContentWidget,
        ),
      ),
    );
  }

  Widget _generateContentWidget(
      BuildContext context, AsyncSnapshot<int> snapshot) {
    Widget widget;

    if (snapshot.hasError) return Text(snapshot.error.toString());
    switch (snapshot.connectionState) {
      case ConnectionState.none: // 当前没有异步任务
        widget = Text("30s");
        break;
      case ConnectionState.active: // Stream处于激活状态(Stream上已经有数据传递)
        widget = Text("${snapshot.data}s");
        break;
      case ConnectionState.waiting: // 异步任务处于等待状态
        widget = Text("30s");
        break;
      case ConnectionState.done: //  异步任务已经终止
        widget = Text("done");
        break;
      default:
        widget = Text("30s");
        break;
    }
    return widget;
  }
}
