import 'package:elchackathon_app/main.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: About(),
  ));
}

int a = 0;
int selectedIndex = 0;

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool status = true;
  String language = "हिंदी";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffeebe7),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 150.0),
            child: Column(
              children: <Widget>[
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18),
                                  bottomLeft: Radius.circular(18))),
                          elevation: 5,
                          color: a == 0 ? Color(0xfff1a3a1) : Color(0xfffeebe7),
                          child: Center(
                              child: Text('English',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15))),
                          onPressed: () {
                            setState(() {
                              a = 0;
                            });
                          },
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(18),
                                  bottomRight: Radius.circular(18))),
                          elevation: 5,
                          color: a == 1 ? Color(0xfff1a3a1) : Color(0xfffeebe7),
                          child: Center(
                              child: Text('हिंदी',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16))),
                          onPressed: () {
                            setState(() {
                              a = 1;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 60.0,
                      margin: EdgeInsets.only(left: 75.0, top: 1),
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
                            side: BorderSide(color: Colors.black54)),
                      ),
                    ),
                  ),
                ]),
                Container(
                    color: Color(0xfffeebe7),
                    child: a == 0
                        ? Text(
                            'About the App',
                            style: TextStyle(
                              fontFamily: 'SansitaSwashed',
                              fontSize: 50.0,
                              color: Color(0xfff1a3a1),
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Text(
                            'ऐप के बारे में',
                            style: TextStyle(
                              fontFamily: 'SansitaSwashed',
                              fontSize: 50.0,
                              color: Color(0xfff1a3a1),
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                SizedBox(
                  width: 150.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60.0,right: 60.0,bottom: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: a == 0
                          ? Text(
                        'Healthx is an app built to act as a virtual bridge between the suffering and towards the goal of getting cured. It was built with the vision in mind to reduce the hassle of the suffering of connecting to the doctors and also understanding what to do and what not to do in such times. Hope this application helps in any small way possible to reduce the pain of our friends worldwide who are suffering. This application is focused on serving the people who has a high chance of having breast cancer/already suffering patients and it strives to make their lives a little bit better.',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          height: 1.8,
                        ),
                        textAlign: TextAlign.center,
                      )
                          : Text(
                        'हेल्थएक्स एक ऐप है जिसे पीड़ितों के बीच आभासी पुल के रूप में कार्य करने और ठीक होने के लक्ष्य के लिए बनाया गया है। यह डॉक्टरों से जुड़ने की पीड़ा की परेशानी को कम करने के लिए दृष्टि के साथ बनाया गया था और यह भी समझने के लिए कि ऐसे समय में क्या करना है और क्या नहीं। आशा है कि यह एप्लिकेशन दुनिया भर में पीड़ित हमारे दोस्तों के दर्द को कम करने के लिए किसी भी तरह से संभव है। यह एप्लिकेशन उन लोगों की सेवा करने पर केंद्रित है, जिनके स्तन कैंसर / पहले से ही पीड़ित मरीज होने का एक उच्च मौका है और यह उनके जीवन को थोड़ा बेहतर बनाने का प्रयास करता है।.',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          height: 1.8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      color: Color(0xfffeebe7),
                      child: a == 0
                          ? Text(
                              'Developers',
                              style: TextStyle(
                                fontFamily: 'SansitaSwashed',
                                fontSize: 50.0,
                                color: Color(0xfff1a3a1),
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : Text(
                              'डेवलपर्स',
                              style: TextStyle(
                                fontFamily: 'SansitaSwashed',
                                fontSize: 50.0,
                                color: Color(0xfff1a3a1),
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                ),
                SizedBox(
                  width: 150.0,
                  height: 20.0,
                  child: Divider(
                    color: Color(0xfff1a3a1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, right: 15, left: 15.0),
                              child: CircleAvatar(
                                radius: 50.0,
                                backgroundImage: AssetImage('assets/Eeshan (3).jpg'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Text(
                                a == 0 ? 'Eeshan Dutta' : "इशान दत्त",
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 20.0,
                                  color: Color(0xfff1a3a1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 27.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, right: 15, left: 15.0),
                              child: CircleAvatar(
                                radius: 50.0,
                                backgroundImage: AssetImage('assets/Soham.jpg'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Text(
                                a == 0 ? 'Soham Sakaria' : "सोहम साकारिया",
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 20.0,
                                  color: Color(0xfff1a3a1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(27.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, right: 15, left: 15.0),
                              child: CircleAvatar(
                                radius: 50.0,
                                backgroundImage: AssetImage('assets/parth pandey.jpg'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Text(
                                a == 0 ? 'Parth Pandey' : "पार्थ पांडेय",
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 20.0,
                                  color: Color(0xfff1a3a1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 27.0,
                      ),
                      Container(


                        decoration: BoxDecoration(

                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, right: 20, left: 15.0),
                              child: CircleAvatar(
                                radius: 50.0,
                                backgroundImage: AssetImage('assets/Parth Srivastava.jpeg'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(

                              a == 0 ? 'Parth Srivastava' : "पार्थ श्रीवास्तव",
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20.0,
                                color: Color(0xfff1a3a1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
