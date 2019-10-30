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
          // // 2. 创建一个Container，其有两个`Text`做为child，通过`alignment`指定`child`的对齐方式。
          // Container(
          //   alignment: Alignment.center,
          //   child: Column(
          //     children: <Widget>[
          //       Text('English'),
          //       Text('Chinese'),
          //       Icon(Icons.lock)
          //     ],
          //   ),
          // )
          // 3. 将Alignment(0.0, 3.0)带入坐标转换公式中，可以得到Icon的实际偏移坐标为(0, 480)
          // Center(
          //   child: Container(
          //     width: 240,
          //     height: 240,
          //     color: Colors.green,
          //     alignment: Alignment(0.0, 3.0),
          //     child: Icon(Icons.lock, size: 36, color: Colors.red),
          //   ),
          // )
          // 4. 将FractionalOffsetFractionalOffset(0,0.5)带入坐标转换公式中，可以得到Icon实际偏移为(0, 240)
          // Container(
          //   width: 480,
          //   height: 480,
          //   color: Colors.green,
          //   alignment: FractionalOffset(0, 0.5),
          //   child: Icon(Icons.lock, size: 36, color: Colors.red),
          // )
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(32.0),
            child: Icon(Icons.lock, size: 36, color: Colors.red),
          )
        ],
      ),
    );
  }
}
