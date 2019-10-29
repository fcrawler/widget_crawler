import 'package:flutter/material.dart';

class ContainerTilePage extends StatelessWidget {
  const ContainerTilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Tile'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          // // 1. 创建一个Container，宽度为60，高度为60，背景色为绿色
          // Container(
          //   width: 60,
          //   height: 60,
          //   color: Colors.green,
          // )
          // 
          // 2. 创建一个Container，其有两个`Text`做为child，通过`alignment`指定`child`的对齐方式。
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text('English'),
                Text('Chinese'),
                Icon(Icons.lock)
              ],
            ),
            
          )
        ],
      ),
    );
  }
}