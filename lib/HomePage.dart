import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:elchackathon_app/SymptomsPage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              }
          )
        ],
      ),
      body: Center(
        child: Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Symptoms())
              );
            },
              color: Colors.pinkAccent[200],
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width-150,
                child: Center(
                  child: Text('Symptoms',style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 5,
                    color: Colors.white,
                  ),),
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              )
          ),
        ),
      ),
    );
  }
}
