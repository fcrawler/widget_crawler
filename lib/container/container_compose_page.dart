import 'package:flutter/material.dart';

class ContainerComposePage extends StatelessWidget {
  const ContainerComposePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Container'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.red,
          child: Container(
            padding: EdgeInsets.all(48.0),
            margin: EdgeInsets.all(48.0),
            color: Colors.green,
            child: Container(
              color: Colors.lightBlue,
              child: Text('child', style: TextStyle(color: Colors.white, fontSize: 22),),
            ),
          ),
        ));
  }
}
