import 'package:elchackathon_app/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

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
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage('assets/Pink.png'),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.8), BlendMode.dstATop),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              // --------------- Sign Up Container ---------------//
              Container(
                //color: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 150, 0, 0),
                height: 280,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.25,
                    color: Colors.pink[700],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // --------------- Username box ---------------//
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 40, 10),
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255, 182, 193, 1),
                        blurRadius: 20.0,
                        offset: Offset(0, 5),
                      ),
                    ]),
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email Id',
                      hintStyle: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20.0,
                      ),
                    ),
                    // ----- Username input stored in a string -----//
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    }),
              ),
              SizedBox(height: 20),
              // --------------- Password box ---------------//
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 40, 10),
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255, 182, 193, 1),
                        blurRadius: 20.0,
                        offset: Offset(0, 5),
                      ),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20.0,
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
              SizedBox(height: 20),
              // --------------- Confirm password box ---------------//
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 40, 10),
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255, 182, 193, 1),
                        blurRadius: 20.0,
                        offset: Offset(0, 5),
                      ),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20.0,
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
              SizedBox(height: 40),
              // --------------- Register Button ---------------//
              Container(
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
                    color: Colors.pinkAccent[200],
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width - 150,
                      child: Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
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
