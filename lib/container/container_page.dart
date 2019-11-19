import 'package:flutter/material.dart';
import 'package:widget_crawler/container/box_decoration_page.dart';
import 'package:widget_crawler/container/container_compose_page.dart';
import 'package:widget_crawler/container/container_tile_page.dart';
import 'package:widget_crawler/container/gradient_page.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Container'),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Center(
                child: Text('Container Compose'),
              ),
              onTap: () => {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) {
                  return ContainerComposePage();
                })),
              },
            ),
            ListTile(
              title: Center(
                child: Text('Container Tile'),
              ),
              onTap: () => {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) {
                  return ContainerTilePage();
                })),
              },
            ),
            ListTile(
              title: Center(
                child: Text('BoxDecoration'),
              ),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return BoxDecorationPage();
                    })),
              },
            ),
            ListTile(
              title: Center(
                child: Text('Gradient'),
              ),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return GradientPage();
                    })),
              },
            )
          ],
        ));
  }
}
