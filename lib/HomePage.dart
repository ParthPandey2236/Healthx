import 'package:flutter/material.dart';
import 'package:elchackathon_app/SymptomsPage.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
