import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home_page.dart';

void main(){
  debugPaintSizeEnabled = false;
  debugPaintBaselinesEnabled = false;
  debugPaintPointersEnabled = false;
  runApp(new MaterialApp(
    home: HomePage(),
  ));
}

