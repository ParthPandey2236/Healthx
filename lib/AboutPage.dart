import 'package:elchackathon_app/main.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
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
      backgroundColor: Colors.greenAccent[100],
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 60.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width - 80,
                    top: 40,
                    right: 20),
                child: FlatButton(
                  onPressed: () async {
                    //SharedPreferences prefs = await SharedPreferences.getInstance();
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.setString('email', null);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Icon(
                    EvaIcons.logOutOutline,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.white)),
                ),
              ),

              Text(
                'Developers',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/Eeshan (3).jpg'),
              ),
              Text(
                'Eeshan Dutta',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                  color: Colors.blue,
                ),
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/Eeshan (3).jpg'),
              ),
              Text(
                'Soham Sakaria',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                  color: Colors.blue,
                ),
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/parth pandey.jpg'),
              ),
              Text(
                'Parth Pandey',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                  color: Colors.blue,
                ),
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/Parth Srivastava.jpeg'),
              ),
              Text(
                'Parth Srivastava',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
