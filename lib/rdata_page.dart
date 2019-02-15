import 'package:flutter/material.dart';
import 'selection_button.dart';

class RDataPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Routing w/ Returned Data")
      ),
      body: Center(child: SelectionButton(),),
    );
  }
}