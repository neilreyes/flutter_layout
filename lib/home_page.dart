import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    void _onPressed(){
      Navigator.pushNamed(context, '/lake');
    }

    return new Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: RaisedButton(
              onPressed: _onPressed,
              child: Text('Oeschinen Lake Campground'),  
          ),
        ),
      );
  }

}
