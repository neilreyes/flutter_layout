import 'package:flutter/material.dart';
import 'lake.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    void _onPressed(){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context)=>Lake(),
        )  
      );
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
