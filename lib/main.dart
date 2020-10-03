import 'package:elchackathon_app/HomePage.dart';
import 'package:elchackathon_app/SignUpPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:elchackathon_app/ChatPage.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MaterialApp(
//     home: Login(),
//   ));
// }

int divisions = 13;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  currentUserEmail();
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              image: new DecorationImage(
                  image: new AssetImage('assets/LoginBackground.jpg'),
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(1),
                      BlendMode.dstATop),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            children: [
              //-------- Username Text Box ---------//
              SizedBox(height: (MediaQuery.of(context).size.height/divisions)*5),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width-70,
                //padding: EdgeInsets.fromLTRB(10, 10, 40, 10),
                color:Colors.white,
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  keyboardType: TextInputType.emailAddress,
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
                    hintText: ' Email',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(255, 192, 203, 0.8),
                      fontSize: 25.0,
                      //fontWeight: FontWeight.bold,
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
              SizedBox(height: MediaQuery.of(context).size.height/divisions*0.5),
              //-------- Password Text Box ---------//
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
                  //-------- Password input stored in a String ---------//
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/divisions*0.5),
              //-------- Login button ---------//
              Container(
                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width-200),
                child: FlatButton(
                    onPressed: () async {
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: email, password: password
                        );
                        if (user != null) {
                          final prefs = await SharedPreferences.getInstance();
                          prefs.remove('email');
                          prefs.setString('email',email);
                          currentUserEmail();
                          MessagesStream();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }
                      } catch (e) {
                        showAlertDialog(context, 'Invalid email or password');
                      }
                    },
                    color: Color.fromRGBO(255, 192, 203, 1),
                    child: Container(
                      height: 50,
                      width: 100,
                      child: Center(
                        child: Text(
                          'Login',
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
              //-------- Sign up button ---------//
              SizedBox(height: (MediaQuery.of(context).size.height/divisions)*2),
              Container(
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    color: Color.fromRGBO(255, 192, 203, 1),
                    child: Container(
                      height: 50,
                      width: 220,
                      child: Center(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 5,
                              color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
