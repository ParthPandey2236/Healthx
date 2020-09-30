import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:elchackathon_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(
    home: About(),
  ));
}

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left:MediaQuery.of(context).size.width-80,top: 40, right: 20),
        child: FlatButton(
          onPressed: () async {
            //SharedPreferences prefs = await SharedPreferences.getInstance();
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setString('email',null);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Login()
                ));
          },
          child: Icon(
            EvaIcons.logOutOutline,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.white)
          ),
        ),
      ),
    );
  }
}
