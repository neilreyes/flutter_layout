import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/lake');
                },
                child: Text('Oeschinen Lake Campground'),  
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/rdata');
                },
                child: Text('Returned Data Excercise'),  
              )
            ],
          ),
        ),
      );
  }

}
