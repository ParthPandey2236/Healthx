import 'package:elchackathon_app/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}
int divisions = 20;
class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  String confirmpassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: new DecorationImage(
                  image: new  AssetImage('assets/LoginBackground.jpg'),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(1), BlendMode.dstATop),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/divisions*7),
              // --------------- Username box ---------------//
              Container(
                height:50,
                width: MediaQuery.of(context).size.width - 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(255,192,203,1),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(255,192,203,1),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      hintText: ' Email Id',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(255, 192, 203, 0.8),
                        fontSize: 25.0,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ----- Username input stored in a string -----//
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    }),
              ),
              SizedBox(height:MediaQuery.of(context).size.height/divisions),
              // --------------- Password box ---------------//
              Container(
                height:50,
                width: MediaQuery.of(context).size.width - 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(255,192,203,1),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(255,192,203,1),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    hintText: ' Password',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(255, 192, 203, 0.8),
                      fontSize: 25.0,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  // ----- Password input stored in a string -----//
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  obscureText: true,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/divisions),
              // --------------- Confirm password box ---------------//
              Container(
                height:50,
                width: MediaQuery.of(context).size.width - 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(255,192,203,1),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(255,192,203,1),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    hintText: ' Confirm Password',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(255, 192, 203, 0.8),
                      fontSize: 25.0,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  // ---- Confirm password input stored in a string ----//
                  onChanged: (value) {
                    setState(() {
                      confirmpassword = value;
                    });
                  },
                  obscureText: true,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/divisions*1),
              // --------------- Register Button ---------------//
              Container(
                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width-200),
                child: FlatButton(
                    onPressed: () async {
                      if (confirmpassword != password) {
                        showAlertDialog(context, 'Both passwords should match');
                      } else if (password.length < 8) {
                        showAlertDialog(context, 'Password too short');
                      } else {
                        try {
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);
                          if (newUser != null) {
                            Navigator.pop(context);
                          }
                        } catch (e) {
                          showAlertDialog(context, 'Username already registered');
                        }
                      }
                    },
                  color: Color.fromRGBO(255, 192, 203, 1),
                  child: Container(
                    height: 50,
                    width: 120,
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 25,
                          letterSpacing:2,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side:BorderSide(color: Colors.white,width: 3
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context, String str) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Error"),
    content: Text(str),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 50);
    var controlpoint = Offset(size.width / 2, size.height);
    var endpoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(
        controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
