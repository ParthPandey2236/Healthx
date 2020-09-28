import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String Username="";
  String Password="";
  String ConfirmPassword="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --------------- Sign Up Container ---------------//
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                color: Colors.pinkAccent[200],
                height: 200,
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            // --------------- Username box ---------------//
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
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20.0,
                    ),
                  ),
                  // ----- Username input stored in a string -----//
                  onSubmitted: (String usr){
                    setState(() {
                      Username = usr;
                    });
                  }
              ),
            ),
            SizedBox(height: 20),
            // --------------- Password box ---------------//
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
                // ----- Password input stored in a string -----//
                onSubmitted: (String pass){
                  setState((){
                    Password = pass;
                  });
                },
                obscureText: true,
              ),
            ),
            SizedBox(height: 20),
            // --------------- Confirm password box ---------------//
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
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20.0,
                  ),
                ),
                // ---- Confirm password input stored in a string ----//
                onSubmitted: (String cmpass){
                  setState(() {
                    ConfirmPassword = cmpass;
                  });
                },
                obscureText: true,
              ),
            ),
            SizedBox(height: 40),
            // --------------- Register Button ---------------//
            Container(
              child: RaisedButton(
                  onPressed: (){
                    if(ConfirmPassword!=Password){
                      showAlertDialog(context,'Both passwords should match');
                    }
                    else if(Password.length<8){
                      showAlertDialog(context,'Password too short');
                    }
                    else{
                      Navigator.pop(context);
                    }
                  },
                  color: Colors.pinkAccent[200],
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width-150,
                    child: Center(
                      child: Text('Register',style: TextStyle(
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
          ],
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