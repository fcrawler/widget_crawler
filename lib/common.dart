import 'package:flutter/material.dart';

gotoRout(BuildContext context, Widget route) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return route;
  }));
}
