import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Diet(),
  ));
}

class Diet extends StatefulWidget {
  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300],
        child:Center(
          child: Text('Hello, this is diet and exercise page'),
        ),
      ),
    );
  }
}
