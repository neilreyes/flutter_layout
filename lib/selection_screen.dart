import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Pick an option"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.pop(context, 'Yes!');
                },
                child: Text("Yep!"),
              )
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.pop(context, 'Nope!');
                },
                child: Text("Nope!"),
              )
            )
          ],
        )
      )
    );
  }
}