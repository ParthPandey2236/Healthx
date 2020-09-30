import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Chat(),
  ));
}

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300],
        child:Center(
          child: Text('Hello, this is chat page'),
        ),
      ),
    );
  }
}
