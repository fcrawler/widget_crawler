import 'package:flutter/cupertino.dart';
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
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14,),
              child:  Column(
                children: <Widget>[
                  SizedBox(
                    height: 6,
                  ),
                  // 1. 创建一个Container，宽度为60，高度为60，背景色为绿色
                  Text('宽度为60，高度为60，背景色为绿色'),
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  // 2. 创建一个Container，其有两个`Text`做为child，通过`alignment`指定`child`的对齐方式。
                  Text('有两个`Text`做为child，通过`alignment`指定`child`的对齐方式'),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 6),
                    color: Colors.green,
                    child: Column(
                      children: <Widget>[
                        Text('English', style: TextStyle(color: Colors.white),),
                        Text('Chinese', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  // 3. 将Alignment(0.0, 3.0)带入坐标转换公式中，可以得到Icon的实际偏移坐标为(0, 480)
                  Text('将Alignment(0.0, 3.0)带入坐标转换公式中，可以得到Icon的实际偏移坐标为(0, 480)'),
                  Center(
                    child: Container(
                      width: 240,
                      height: 240,
                      color: Colors.green,
                      alignment: Alignment(0.0, 3.0),
                      child: Icon(Icons.lock, size: 36, color: Colors.red),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  // 4. 将FractionalOffsetFractionalOffset(0,0.5)带入坐标转换公式中，可以得到Icon实际偏移为(0, 240)
                  Text('将FractionalOffsetFractionalOffset(0,0.5)带入坐标转换公式中，可以得到Icon实际偏移为(0, 240)'),
                  Container(
                    width: 480,
                    height: 480,
                    color: Colors.green,
                    alignment: FractionalOffset(0, 0.5),
                    child: Icon(Icons.lock, size: 36, color: Colors.red),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  // 5. 将Container的padding设置为(32, 32, 32, 32),child是一个大小为36的Icon。此时，Icon与Container的视觉边缘的间距为32。
                  Text('将Container的padding设置为(32, 32, 32, 32),child是一个大小为36的Icon。此时，Icon与Container的视觉边缘的间距为32'),
                  Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(32.0),
                    child: Icon(Icons.lock, size: 36, color: Colors.red),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  // 6. EdgeInsets.fromLTRB(36, 36, 18, 18)
                  Text('EdgeInsets.fromLTRB(36, 36, 18, 18)'),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    color: Colors.green,
                    padding: EdgeInsets.fromLTRB(36, 36, 18, 18),
                    child: Text(
                      'EdgeInsetDirectional',
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  // 7.在Container中，其child为一个Text。在Text上面，绘制一个宽度为3的红色边框
                  Text('在Container中，其child为一个Text。在Text上面，绘制一个宽度为3的红色边框'),
                  Container(
                    color: Colors.green,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(32.0),
                    foregroundDecoration: BoxDecoration(
                        border: Border.all(color: Colors.red, width: 3)),
                    child: Text('ForegrouondDecoration'),
                  ),
                  SizedBox(
                    height: 48,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
