import 'package:elchackathon_app/HomePage.dart';
import 'package:elchackathon_app/SignUpPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MaterialApp(
//     home: Login(),
//   ));
// }

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var status = prefs.getString('email');
  runApp(MaterialApp(
    home: status == null? Login(): HomePage(),
  ));
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      //resizeToAvoidBottomInset: true,
      //backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.white,
              image: new DecorationImage(
                  image: new AssetImage('assets/Pink.png'),
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(0.8),
                      BlendMode.dstATop),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            children: [
              //-------- Login Container ---------//
              Container(
                //color: Colors.pinkAccent[200],
                padding: EdgeInsets.fromLTRB(10, 150, 0, 0),
                height: 270,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.25,
                    color: Colors.pink[700],
                  ),
                ),
              ),
              //-------- Username Text Box ---------//
              SizedBox(height: 10),
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
                  //-------- Username input stored in a String ---------//
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              //-------- Password Text Box ---------//
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
                  //-------- Password input stored in a String ---------//
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 40),
              //-------- Sign in button ---------//
              Container(
                child: FlatButton(
                    onPressed: () async {
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: email, password: password
                        );
                        if (user != null) {
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setString('email',email);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }
                      } catch (e) {
                        showAlertDialog(context, 'Invalid email or password');
                      }
                    },
                    color: Colors.pinkAccent[200],
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width - 150,
                      child: Center(
                        child: Text(
                          'Sign in',
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
              SizedBox(height: 20),
              //-------- Sign up button ---------//
              Container(
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width - 150,
                      child: Center(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 5,
                            color: Colors.pinkAccent[200],
                          ),
                        ),
                      ),
                    ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.pinkAccent[200],
                      width: 3
                      )
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
