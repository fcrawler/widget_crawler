import 'package:flutter/material.dart';

import 'dart:math' as dmath;

class GradientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gradient'),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text(
                    'LinearGradient\n\n' + 'Normal',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  height: 96,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.red, Colors.green])),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 6),
                  child: Text(
                    'begin(-0.2, -0.2) - end(0.2, 0.2)',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  height: 96,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-0.2, -0.2),
                          end: Alignment(0.2, 0.2),
                          colors: [Colors.red, Colors.green])),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 6),
                  child: Text(
                    'tileModel - TileMode.clamp',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  height: 96,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-0.2, -0.2),
                          end: Alignment(0.2, 0.2),
                          colors: [Colors.red, Colors.green],
                          tileMode: TileMode.clamp)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 6),
                  child: Text(
                    'tileModel - TileMode.mirror',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  height: 96,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-0.2, -0.2),
                          end: Alignment(0.2, 0.2),
                          colors: [Colors.red, Colors.green],
                          tileMode: TileMode.mirror)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 6),
                  child: Text(
                    'tileModel - TileMode.repeated',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  height: 96,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-0.2, -0.2),
                          end: Alignment(0.2, 0.2),
                          colors: [Colors.red, Colors.green],
                          tileMode: TileMode.repeated)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text(
                    'stops',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  height: 96,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(stops: [
                    0.0,
                    0.2,
                    0.5,
                    1.0
                  ], colors: [
                    Colors.red,
                    Colors.green,
                    Colors.yellow,
                    Colors.blue
                  ])),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text(
                    'RadialGradient',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  width: 196,
                  height: 196,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.center,
                        radius: 0.5,
                        colors:[
                          Colors.red,
                          Colors.green,
                          Colors.yellow,
                          Colors.blue
                        ]
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text(
                    'center',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  width: 196,
                  height: 196,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                          center: Alignment(-1, -1),
                          radius: 1.0,
                          colors:[
                            Colors.red,
                            Colors.green,
                            Colors.yellow,
                            Colors.blue
                          ]
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text(
                    'Box(196, 98), radius(0.5)',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  width: 196,
                  height: 98,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                          center: Alignment.center,
                          radius: 0.5,
                          colors:[
                            Colors.red,
                            Colors.green,
                            Colors.yellow,
                            Colors.blue
                          ]
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text(
                    'Box(196, 98), radius(1.0)',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  width: 196,
                  height: 98,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                          center: Alignment.center,
                          radius: 1.0,
                          colors:[
                            Colors.red,
                            Colors.green,
                            Colors.yellow,
                            Colors.blue
                          ]
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text(
                    'Box(196, 98), radius(2.0)',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  width: 196,
                  height: 98,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                          center: Alignment.center,
                          radius: 2.0,
                          colors:[
                            Colors.red,
                            Colors.green,
                            Colors.yellow,
                            Colors.blue
                          ]
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text(
                    'focal && focalRadius',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  width: 196,
                  height: 196,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                          center: Alignment(0, 0),
                          radius: 0.5,
                          colors:[
                            Colors.red,
                            Colors.green,
                            Colors.yellow,
                            Colors.blue
                          ]
                      )),
                ),
                SizedBox(
                  width: 196,
                  height: 1,
                ),
                Container(
                  width: 196,
                  height: 196,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                          center: Alignment(0, 0),
                          focal: Alignment(0.3, 0.3),
                          radius: 0.5,
                          colors:[
                            Colors.red,
                            Colors.green,
                            Colors.yellow,
                            Colors.blue
                          ]
                      )),
                ),
                SizedBox(
                  width: 196,
                  height: 1,
                ),
                Container(
                  width: 196,
                  height: 196,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                          center: Alignment(0, 0),
                          focal: Alignment(0.2, 0.2),
                          focalRadius: 0.3,
                          radius: 0.5,
                          colors:[
                            Colors.red,
                            Colors.green,
                            Colors.yellow,
                            Colors.blue
                          ]
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text(
                    'SweepGradient',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  width: 196,
                  height: 196,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      gradient: SweepGradient(
                          center: Alignment(0, 0),
                          startAngle: 0,
                          endAngle: dmath.pi,
                          colors:[
                            Colors.red,
                            Colors.green,
                            Colors.yellow,
                            Colors.blue
                          ],
                      )),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          ],
        ));
  }
}
