import 'package:flutter/material.dart';

class BoxDecorationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BoxDecoration'),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Text('color'),
                  ),
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                ],
              )),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Text('borderRadius'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Text('BorderRadius.all'),
                    ),
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Text('BorderRadius.circular'),
                    ),
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Text('BorderRadius.horizontal'),
                    ),
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(16),
                            right: Radius.circular(24)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Text('BorderRadius.only'),
                    ),
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Text('BorderRadius.vertical'),
                    ),
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(8),
                            bottom: Radius.circular(16)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Text('Radius.circular'),
                    ),
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Text('Radius.elliptical'),
                    ),
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(8, 16)),
                      ),
                    ),
                  ])),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('border'),
                  Text('Border.all'),
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                            color: Colors.blue,
                            width: 3,
                            style: BorderStyle.solid)),
                  ),
                  Text('Border.fromBorderSide'),
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.fromBorderSide(BorderSide(
                          color: Colors.green,
                          width: 3,
                          style: BorderStyle.solid)),
                    ),
                  ),
                  Text('Border()'),
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border(
                          top: BorderSide(
                              color: Colors.black87,
                              width: 3,
                              style: BorderStyle.solid),
                          left: BorderSide(
                              color: Colors.blue,
                              width: 4,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.blue,
                              width: 4,
                              style: BorderStyle.solid),
                          bottom: BorderSide(
                              color: Colors.black87,
                              width: 3,
                              style: BorderStyle.solid)),
                    ),
                  ),
                  Text('Border()'),
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border(
                          top: BorderSide(
                              color: Colors.black87,
                              width: 3,
                              style: BorderStyle.solid),
                          left: BorderSide(
                              color: Colors.blue,
                              width: 4,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.blue,
                              width: 4,
                              style: BorderStyle.none),
                          bottom: BorderSide(
                              color: Colors.black87,
                              width: 3,
                              style: BorderStyle.none)),
                    ),
                  )
                ],
              )),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Text('gradient'),
              ),
              Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0, 0.4, 1.0],
                        colors: [Colors.red, Colors.green, Colors.yellow])),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Text('shape'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Text('BoxShape.circle'),
              ),
              Container(
                width: 96,
                height: 96,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                width: 64,
                height: 96,
                decoration:
                BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Text('BoxShape.rectangle'),
              ),
              Container(
                width: 64,
                height: 96,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.rectangle),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Text('image'),
              ),
              Container(
                width: 96,
                height: 96,
                decoration:
                BoxDecoration(image:DecorationImage(image: AssetImage('assets/images/icon_sun.png'))),
              ),
              Container(
                width: 96,
                height: 96,
                margin: EdgeInsets.symmetric(vertical: 16),
                decoration:
                BoxDecoration(
                    shape: BoxShape.circle,
                    image:DecorationImage(image: AssetImage('assets/images/icon_sun.png'))),
              ),
              Container(
                width: 96,
                height: 96,
                margin: EdgeInsets.symmetric(vertical: 16),
                decoration:
                BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(16),
                    image:DecorationImage(image: AssetImage('assets/images/icon_sun.png'))),
              ),
              Container(
                width: 96,
                height: 96,
                margin: EdgeInsets.symmetric(vertical: 16),
                decoration:
                BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(16),
                    image:DecorationImage(
                        repeat: ImageRepeat.repeat,
                        image: AssetImage('assets/images/icon_sun_sub.png'))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Text('image - alignment'),
              ),
              Container(
                width: 96,
                height: 96,
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration:
                BoxDecoration(
                    color: Colors.red,
                    image:DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('assets/images/icon_sun_sub.png'))),
              ),
              Container(
                width: 96,
                height: 96,
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration:
                BoxDecoration(
                    color: Colors.red,
                    image:DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage('assets/images/icon_sun_sub.png'))),
              ),
              Container(
                width: 96,
                height: 96,
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration:
                BoxDecoration(
                    color: Colors.red,
                    image:DecorationImage(
                    alignment: Alignment.centerRight,
                    image: AssetImage('assets/images/icon_sun_sub.png'))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Text('image - centerSlice'),
              ),
              Container(
                width: 196,
                height: 196,
                margin: EdgeInsets.symmetric(vertical: 6),
                decoration:
                BoxDecoration(
                    color: Colors.red,
                    image:DecorationImage(
                        alignment: Alignment.center,
                        centerSlice: Rect.fromLTWH(-12, -12, 24, 24),
                        image: AssetImage('assets/images/icon_sun_sub.png'))),
              ),
            ],
          ),
          SizedBox(
            height: 48,
          )
        ],
      ),
    );
  }
}
