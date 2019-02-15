import 'package:flutter/material.dart';

class AnimationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final String appTitle = 'Opacity';
    return new MyBoxColor(title: appTitle);
  }
}

class MyBoxColor extends StatefulWidget {
  final String title;

  MyBoxColor({Key key, this.title}) : super(key: key);

  @override
  _MyBoxColorState createState() => _MyBoxColorState();
}

class _MyBoxColorState extends State<MyBoxColor> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.1,
          duration: Duration(milliseconds: 500),
          child: Container(
            width: 300,
            height: 300,
            color: Colors.greenAccent,
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
           _isVisible = !_isVisible; 
          });
        },
        tooltip: 'Toggle opacity',
        child: Icon(Icons.flip)
      ),
    );
  }
}