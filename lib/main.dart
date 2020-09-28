import 'package:elchackathon_app/SignUpPage.dart';
import 'package:elchackathon_app/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Login(),
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
      body:SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage('assets/PinkRibbon.jpg'),
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(0.8),
                      BlendMode.dstATop),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            children: [
              //-------- Login Container ---------//
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  //color: Colors.pinkAccent[200],
                  padding: EdgeInsets.fromLTRB(10, 150, 0, 0),
                  height: 270,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.25,
                      color: Colors.pinkAccent[200],
                    ),
                  ),
                ),
              ),
              //-------- Username Text Box ---------//
              SizedBox(height:10),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 200, 10),
                width: MediaQuery.of(context).size.width-20,
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255, 182, 193, 1),
                        blurRadius: 20.0,
                        offset: Offset(0,5),
                      ),
                    ]
                ),

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
                  onChanged: (value){
                    setState(() {
                      email = value;
                    });
                  },
                ),
              ),
              SizedBox(height:20),
              //-------- Password Text Box ---------//
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 200, 10),
                width: MediaQuery.of(context).size.width-20,
                decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255, 182, 193, 1),
                        blurRadius: 20.0,
                        offset: Offset(0,5),
                      ),
                    ]
                ),
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
                  onSubmitted: (String pass){
                    setState((){
                      password = pass;
                    });
                  },
                ),
              ),
              SizedBox(height: 40),
              //-------- Sign in button ---------//
              Container(
                child: RaisedButton(
                    onPressed: () async{
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: email, password: password);
                        if (user != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>Homepage())
                          );
                        }
                      } catch (e) {
                        showAlertDialog(context,'Invalid email or password');
                      }
                    },
                    color: Colors.pinkAccent[200],
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width-150,
                      child: Center(
                        child: Text('Sign in',style: TextStyle(
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
              SizedBox(height: 20),
              //-------- Sign up button ---------//
              Container(
                child: OutlineButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> SignUp()),
                      );
                    },
                    borderSide: BorderSide(
                      color: Colors.pinkAccent[200],
                      style: BorderStyle.solid,
                      width:3,
                    ),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width-150,
                      child: Center(
                        child: Text('Sign up',style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 5,
                          color: Colors.pinkAccent[200],
                        ),),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height-50);
    var controlpoint = Offset(size.width/2, size.height);
    var endpoint = Offset(size.width, size.height-50);
    path.quadraticBezierTo(controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
