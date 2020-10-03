import 'package:elchackathon_app/main.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toggle_switch/toggle_switch.dart';

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
  bool status = true;
  String language = "हिंदी";
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent[100],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 150.0),
            child: Column(
              children: <Widget>[
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: ToggleSwitch(
                        minWidth: 90.0,
                        cornerRadius: 20,
                        activeBgColor: Colors.pink,
                        inactiveBgColor: Colors.white,
                        labels: ["हिंदी", "English"],
                        onToggle: (index) {
                          print('switched to: $index');
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      margin: EdgeInsets.only(left: 50.0, top: 5, right: 1),
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
                  ),
                ]),
                Container(
                  color: Colors.white,
                  child: Text(
                    'About the App',
                    style: TextStyle(
                      fontFamily: 'SansitaSwashed',
                      fontSize: 50.0,
                      color: Colors.pinkAccent[100],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 150.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Healthx is an app built to act as a virtual bridge between the suffering and towards the goal of getting cured. It was built with the vision in mind to reduce the hassle of the suffering of connecting to the doctors and also understanding what to do and what not to do in such times. Hope this application helps in any small way possible to reduce the pain of our friends worldwide who are suffering. This application is focused on serving the people who has a high chance of having breast cancer/already suffering patients and it strives to make their lives a little bit better.',
                    style: TextStyle(
                      fontFamily: 'SansitaSwashed',
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    color: Colors.white,
                    child: Text(
                      'Developers',
                      style: TextStyle(
                        fontFamily: 'SansitaSwashed',
                        fontSize: 50.0,
                        color: Colors.pinkAccent[100],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50.0,
                            backgroundImage:
                                AssetImage('assets/Eeshan (3).jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Eeshan Dutta',
                                style: TextStyle(
                                  fontFamily: 'SansitaSwashed',
                                  fontSize: 20.0,
                                  color: Colors.pinkAccent[100],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/Soham.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            color: Colors.white,
                            child: Text(
                              'Soham Sakaria',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20.0,
                                color: Colors.pinkAccent[100],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50.0,
                            backgroundImage:
                                AssetImage('assets/parth pandey.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Parth Pandey',
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 20.0,
                                  color: Colors.pinkAccent[100],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              AssetImage('assets/Parth Srivastava.jpeg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            color: Colors.white,
                            child: Text(
                              'Parth Srivastava',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20.0,
                                color: Colors.pinkAccent[100],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
