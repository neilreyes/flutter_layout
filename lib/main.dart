import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home_page.dart';
import 'lake.dart';

void main(){
  debugPaintSizeEnabled = false;
  debugPaintBaselinesEnabled = false;
  debugPaintPointersEnabled = false;
  runApp(new MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => new HomePage(),
      '/lake': (context)=> new Lake(),
    },
  ));
}

