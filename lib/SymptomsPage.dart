import 'package:flutter/material.dart';

int Total_female_symptoms = 20;
int Total_male_symptoms = 4;

class Symptoms extends StatefulWidget {
  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  @override
  void initState() {
    Total_female_symptoms = 20;
    Total_male_symptoms = 4;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: EdgeInsets.only(left:40),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xfffeebe7),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'Symptoms',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          letterSpacing: 1.5),
                    ),
                  ),
                  color: Color(0xfff1a3a1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Early Warning signs of breast cancer',
                  style: TextStyle(fontSize: 40,color: Color(0xfff1a3a1)),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Text(
                  'Symptoms of breast tumors vary from person to person. '
                  'Some common, early warning signs of breast cancer '
                  'include: ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                width: MediaQuery.of(context).size.width-30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.pink[100]),
                  color: Color.fromRGBO(255, 192, 203, 0.1),
                ),
                child: Column(
                  children: [
                    CustomText(
                        text:
                            'Skin changes, such as swelling, redness, or other visible differences in one or both breasts\n',
                        value: false),
                    CustomText(
                        text: 'Changes in the appearance of one or both nipples\n',
                        value: false),
                    CustomText(
                        text: 'Nipple discharge other than breast milk\n',
                        value: false),
                    CustomText(
                        text: 'General pain in/on any part of the breast\n',
                        value: false),
                    CustomText(
                        text: 'Lumps or nodes felt on or inside of the breast\n',
                        value: false),
                  ],
                ),
              ),

              SizedBox(height :30),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Text(
                  'Symptoms More Specific to invasive breast cancer are:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                width: MediaQuery.of(context).size.width-30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.pink[100]),
                  color: Color.fromRGBO(255, 192, 203, 0.1),
                ),
                child: Column(
                  children: [
                    CustomText(text: 'Irritated or itchy breasts\n', value: false),
                    CustomText(text: 'Change in breast color\n', value: false),
                    CustomText(
                        text:
                        'Increase in breast size or shape (over a short period of time)\n',
                        value: false),
                    CustomText(
                        text: 'Changes in touch (may feel hard, tender or warm)\n',
                        value: false),
                    CustomText(
                        text: 'Peeling or flaking of the nipple skin\n',
                        value: false),
                    CustomText(text: 'A breast lump or thickening\n', value: false),
                    CustomText(
                        text:
                        'Redness or pitting of the breast skin (like the skin of an orange) ',
                        value: false),
                  ],
                ),
              ),


              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Ductal carcinoma symptoms',
                  style: TextStyle(fontSize: 40,color: Color(0xfff1a3a1)),

                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Text(
                  'Ductal carcinoma in situ (DCIS) does not cause any symptoms. Rarely, a woman may feel a lump in the breast or have nipple discharge. However, most cases of DCIS are detected with a mammogram.',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Lobular carcinoma symptoms',
                  style: TextStyle(fontSize: 40,color: Color(0xfff1a3a1)),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Text(
                  'Lobular carcinoma in situ (LCIS) does not cause symptoms and cannot be seen with a mammogram. This condition is usually found when a doctor is doing a breast biopsy for another reason, such as to investigate an unrelated breast lump. If a person has LCIS, the breast cells will appear abnormal under a microscope.',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Inflammatory breast cancer symptoms',
                  style: TextStyle(fontSize: 40,color: Color(0xfff1a3a1)),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Text(
                  'Unlike other breast cancers, inflammatory breast cancer (IBC) rarely causes breast lumps and may not appear on a mammogram. Inflammatory breast cancer symptoms include:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                width: MediaQuery.of(context).size.width-30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.pink[100]),
                  color: Color.fromRGBO(255, 192, 203, 0.1),
                ),
                child: Column(
                  children: [
                    CustomText(
                        text:
                            'Red, swollen, itchy breast that is tender to the touch\n',
                        value: false),
                    CustomText(
                        text:
                        'The surface of the breast may take on a ridged or pitted appearance, similar to an orange peel (often called peau d’orange)\n',
                        value: false),
                    CustomText(
                        text: 'Heaviness, burning, or aching in one breast\n',
                        value: false),
                    CustomText(
                        text: 'One breast is visibly larger than the other\n',
                        value: false),
                    CustomText(
                        text: 'Inverted nipple (facing inward)\n', value: false),
                    CustomText(
                        text: 'No mass is felt with a breast self-exam\n',
                        value: false),
                    CustomText(
                        text:
                        'Swollen lymph nodes under the arm and/or above the collarbone\n',
                        value: false),
                    CustomText(
                        text: 'Symptoms unresolved after a course of antibiotics',
                        value: false),
                  ],
                ),
              ),

              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Text(
                  'Unlike other breast cancers, inflammatory breast cancer usually does not cause a distinct lump in the breast. Therefore, a breast self-exam, clinical breast exam, or even a mammogram may not detect inflammatory breast cancer. Ultrasounds may also miss inflammatory breast cancer. However, the changes to the surface of the breast caused by inflammatory breast cancer can be seen with the naked eye.'
                  '\n\nSymptoms of inflammatory breast cancer can develop rapidly, and the disease can progress quickly. Any sudden changes in the texture or appearance of the breast should be reported to your doctor immediately.'
                  '\n\nFor women who are pregnant or breast-feeding, redness, swelling, itchiness and soreness are often signs of a breast infection such as mastitis, which is treatable with antibiotics. If you are not pregnant or nursing and you develop these symptoms, your doctor should test for inflammatory breast cancer.',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Male breast cancer symptoms',
                  style: TextStyle(fontSize: 40,color: Color(0xfff1a3a1)),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                width: MediaQuery.of(context).size.width-30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.pink[100]),
                  color: Color.fromRGBO(255, 192, 203, 0.1),
                ),
                child: Column(
                  children: [
                    CustomText(
                        text: 'Lumps in the breast, usually painless\n',
                        value: false),
                    CustomText(text: 'Thickening of the breast\n', value: false),
                    CustomText(
                        text:
                        'Changes to the nipple or breast skin, such as dimpling, puckering or redness\n',
                        value: false),
                    CustomText(
                        text: 'Discharge of fluid from the nipples\n', value: false),
                  ],
                ),
              ),

              SizedBox(height: 20),
              FlatButton(
                onPressed: () {
                  chooseGenderDialog(context);
                },
                color: Color(0xfffeebe7),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Text(
                    'Make a Prediction',
                    style: TextStyle(
                      color: Color(0xfff1a3a1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  side:BorderSide(color: Color(0xfff1a3a1),width: 2.5),
                ),
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}

Future<dynamic> SetDefault() {
  Total_female_symptoms = 20;
  Total_male_symptoms = 4;
}

class CustomText extends StatefulWidget {
  CustomText({this.text, this.value});
  final String text;
  bool value = false;
  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  int total = 0;
  bool checkBoxvalue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.only(bottom: 20),
          height: 50,
          width: 50,
          child: Checkbox(
            value: widget.value,
            activeColor: Colors.pinkAccent[200],
            onChanged: (bool val) {
              CalculateSymptoms();
              setState(() {
                widget.value = val;
              });
            },
          ),
        ),
        title: Text(widget.text,
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18)),
      ),
    );
  }

  void CalculateSymptoms() {
    if (widget.text == 'Lumps in the breast, usually painless\n') {
      if (widget.value == true)
        Total_male_symptoms += 1;
      else
        Total_male_symptoms -= 1;
    } else if (widget.text == 'Thickening of the breast\n') {
      if (widget.value == true)
        Total_male_symptoms += 1;
      else
        Total_male_symptoms -= 1;
    } else if (widget.text ==
        'Changes to the nipple or breast skin, such as dimpling, puckering or redness\n') {
      if (widget.value == true)
        Total_male_symptoms += 1;
      else
        Total_male_symptoms -= 1;
    } else if (widget.text == 'Discharge of fluid from the nipples\n') {
      if (widget.value == true)
        Total_male_symptoms += 1;
      else
        Total_male_symptoms -= 1;
    } else {
      if (widget.value == true)
        Total_female_symptoms += 1;
      else
        Total_female_symptoms -= 1;
    }
    print(widget.value.toString() +
        Total_female_symptoms.toString() +
        Total_male_symptoms.toString());
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 50);
    var controlpoint = Offset(5, size.height);
    var endpoint = Offset(50, size.height);
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

chooseGenderDialog(BuildContext context) {
  // Create button
  Widget cancelButton = FlatButton(
    child: Text(
      "Cancel",
      style: TextStyle(
        fontSize: 20,
        color: Color(0xfff1a3a1),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  Widget ChooseMaleGender = FlatButton(
    child: Text(
      "Male",
      style: TextStyle(
        fontSize: 20,
        color: Color(0xfff1a3a1),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
      calculatePrediction(context, 'Male');
    },
  );
  Widget ChooseFemaleGender = FlatButton(
    child: Text(
      "Female",
      style: TextStyle(
        fontSize: 20,
        color: Color(0xfff1a3a1),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
      calculatePrediction(context, 'Female');
    },
  );

  Widget ChooseOtherGender = FlatButton(
    child: Text(
      "Others",
      style: TextStyle(
        fontSize: 20,
        color: Color(0xfff1a3a1),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
      calculatePrediction(context, 'Others');
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Choose your gender"),
    actions: [
      ChooseMaleGender,
      ChooseFemaleGender,
      ChooseOtherGender,
      cancelButton,
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

calculatePrediction(BuildContext context, String text) {
  Widget okButton = FlatButton(
    child: Text(
      "OK",
      style: TextStyle(
        fontSize: 20,
        color: Color(0xfff1a3a1),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(text),
    content: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            if (text == 'Male')
              Text(((4 - Total_male_symptoms) * 25).toString() + '%\n',
                  style: TextStyle(fontSize: 30))
            else if (text == 'Female')
              Text(((20 - Total_female_symptoms) * 5).toString() + '%\n',
                  style: TextStyle(fontSize: 30))
            else
              Text(
                  ((24 - Total_male_symptoms - Total_female_symptoms) * 4)
                          .toString() +
                      '%\n',
                  style: TextStyle(fontSize: 30)),
            Text(
                "This is in no way a perfect prediction. This is just a rough estimate based on the symptoms you selected"),
          ],
        ),
      ),
    ),
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
