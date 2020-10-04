import 'package:flutter/material.dart';
import 'AboutPage.dart';
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
                      a==0?
                      'Symptoms':"लक्षण",
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
                  a==0?
                  'Early Warning signs of breast cancer':"स्तन कैंसर के शुरुआती चेतावनी के संकेत",
                  style: TextStyle(fontSize: 40,color: Color(0xfff1a3a1)),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Text(
                  a==0?
                  'Symptoms of breast tumors vary from person to person. Some common, early warning signs of breast cancer include: '
                      :"स्तन ट्यूमर के लक्षण हर व्यक्ति में अलग-अलग होते हैं। स्तन कैंसर के कुछ सामान्य, शुरुआती चेतावनी के संकेतों में शामिल हैं:",
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
                            a==0?
                            'Skin changes, such as swelling, redness, or other visible differences in one or both breasts\n'
                        :"त्वचा परिवर्तन, जैसे कि सूजन, लालिमा, या एक या दोनों स्तनों में अन्य दृश्यमान अंतर\n",
                        value: false),
                    CustomText(
                        text: a==0?'Changes in the appearance of one or both nipples\n':"एक या दोनों निपल्स की उपस्थिति में परिवर्तन\n",
                        value: false),
                    CustomText(
                        text: a==0?'Nipple discharge other than breast milk\n':"स्तन के दूध के अलावा अन्य निप्पल का निर्वहन\n",
                        value: false),
                    CustomText(
                        text: a==0?'General pain in/on any part of the breast\n':"स्तन के किसी भी भाग पर सामान्य दर्द\n",
                        value: false),
                    CustomText(
                        text: a==0?'Lumps or nodes felt on or inside of the breast\n':"स्तन के ऊपर या अंदर गांठ या गांठ महसूस होना\n",
                        value: false),
                  ],
                ),
              ),

              SizedBox(height :30),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Text(
                  a==0?
                  'Symptoms More Specific to invasive breast cancer are:':"लक्षण अधिक आक्रामक स्तन कैंसर के लिए विशिष्ट हैं:",
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
                    CustomText(text: a==0?'Irritated or itchy breasts\n':"चिड़चिड़ाहट या खुजली वाले स्तन\n", value: false),
                    CustomText(text: a==0?'Change in breast color\n':"स्तन के रंग में परिवर्तन\n", value: false),
                    CustomText(
                        text:a==0?
                        'Increase in breast size or shape (over a short period of time)\n':"स्तन के आकार या आकार में वृद्धि (थोड़े समय के लिए)\n",
                        value: false),
                    CustomText(
                        text: a==0?'Changes in touch (may feel hard, tender or warm)\n':"संपर्क में बदलाव (कठोर, कोमल या गर्म लग सकता है)\n",
                        value: false),
                    CustomText(
                        text: a==0?'Peeling or flaking of the nipple skin\n':"निपल त्वचा का छीलना या झपकना\n",
                        value: false),
                    CustomText(text: a==0?'A breast lump or thickening\n':"एक स्तन गांठ या मोटा होना\n", value: false),
                    CustomText(
                        text:
                        a==0?'Redness or pitting of the breast skin (like the skin of an orange)':"स्तन की त्वचा का लाल होना या खड़ा होना (नारंगी की त्वचा की तरह)",
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
                  a==0?
                  'Ductal carcinoma symptoms':"डक्टल कार्सिनोमा लक्षण",
                  style: TextStyle(fontSize: 40,color: Color(0xfff1a3a1)),

                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Text(
                  a==0?
                  'Ductal carcinoma in situ (DCIS) does not cause any symptoms. Rarely, a woman may feel a lump in the breast or have nipple discharge. However, most cases of DCIS are detected with a mammogram.'
                      :"डक्टल कार्सिनोमा इन सीटू (DCIS) कोई लक्षण पैदा नहीं करता है। शायद ही कभी, एक महिला स्तन में एक गांठ महसूस कर सकती है या निप्पल का निर्वहन हो सकता है। हालांकि, DCIS के ज्यादातर मामलों का पता मैमोग्राम से लगाया जाता है।",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(a==0?
                  'Lobular carcinoma symptoms':"लोब्युलर कार्सिनोमा के लक्षण",
                  style: TextStyle(fontSize: 40,color: Color(0xfff1a3a1)),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Text(a==0?
                  'Lobular carcinoma in situ (LCIS) does not cause symptoms and cannot be seen with a mammogram. This condition is usually found when a doctor is doing a breast biopsy for another reason, such as to investigate an unrelated breast lump. If a person has LCIS, the breast cells will appear abnormal under a microscope.'
                    :"सीटू (LCIS) में लोब्यूलर कार्सिनोमा लक्षण पैदा नहीं करता है और मैमोग्राम के साथ नहीं देखा जा सकता है। यह स्थिति आमतौर पर तब पाई जाती है जब एक डॉक्टर किसी अन्य कारण से स्तन की बायोप्सी कर रहा होता है, जैसे कि एक असंबंधित स्तन गांठ की जांच करना। यदि किसी व्यक्ति में एलसीआईएस है, तो माइक्रोस्कोप के तहत स्तन कोशिकाएं असामान्य दिखाई देंगी।",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  a==0?
                  'Inflammatory breast cancer symptoms':"सूजन स्तन कैंसर के लक्षण",
                  style: TextStyle(fontSize: 40,color: Color(0xfff1a3a1)),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Text(a==0?
                  'Unlike other breast cancers, inflammatory breast cancer (IBC) rarely causes breast lumps and may not appear on a mammogram. Inflammatory breast cancer symptoms include:'
                  :"अन्य स्तन कैंसर के विपरीत, भड़काऊ स्तन कैंसर (IBC) शायद ही कभी स्तन गांठ का कारण बनता है और एक मेम्मोग्राम पर प्रकट नहीं हो सकता है। भड़काऊ स्तन कैंसर के लक्षणों में शामिल हैं:",
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
                        text:a==0?
                            'Red, swollen, itchy breast that is tender to the touch\n':"लाल, सूजे हुए, खुजली वाले स्तन जो स्पर्श के लिए कोमल होते हैं\n",
                        value: false),
                    CustomText(
                        text:a==0?
                        'The surface of the breast may take on a ridged or pitted appearance, similar to an orange peel (often called peau d’orange)\n':"स्तन की सतह एक नारंगी छिलके (जिसे अक्सर peau d’orange कहा जाता है) के समान, एक उभरे हुए या उभरे हुए रूप में हो सकता है।\n",
                        value: false),
                    CustomText(
                        text: a==0?'Heaviness, burning, or aching in one breast\n':"भारीपन, जलन, या एक स्तन में दर्द\n",
                        value: false),
                    CustomText(
                        text: a==0?'One breast is visibly larger than the other\n':"एक स्तन दूसरे की तुलना में काफी बड़ा होता है\n",
                        value: false),
                    CustomText(
                        text: a==0?'Inverted nipple (facing inward)\n':"उलटा निप्पल (अंदर की ओर मुख करना)\n", value: false),
                    CustomText(
                        text: a==0?'No mass is felt with a breast self-exam\n':"स्तन आत्म परीक्षण के साथ कोई द्रव्यमान महसूस नहीं किया जाता है\n",
                        value: false),
                    CustomText(
                        text: a==0?
                        'Swollen lymph nodes under the arm and/or above the collarbone\n':"बांह के नीचे और / या कॉलरबोन के ऊपर लिम्फ नोड्स में सूजन\n",
                        value: false),
                    CustomText(
                        text: a==0?'Symptoms unresolved after a course of antibiotics':"एंटीबायोटिक्स के एक कोर्स के बाद लक्षण अनसुलझे",
                        value: false),
                  ],
                ),
              ),

              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Text(a==0?
                  'Unlike other breast cancers, inflammatory breast cancer usually does not cause a distinct lump in the breast. Therefore, a breast self-exam, clinical breast exam, or even a mammogram may not detect inflammatory breast cancer. Ultrasounds may also miss inflammatory breast cancer. However, the changes to the surface of the breast caused by inflammatory breast cancer can be seen with the naked eye.\n\nSymptoms of inflammatory breast cancer can develop rapidly, and the disease can progress quickly. Any sudden changes in the texture or appearance of the breast should be reported to your doctor immediately.\n\nFor women who are pregnant or breast-feeding, redness, swelling, itchiness and soreness are often signs of a breast infection such as mastitis, which is treatable with antibiotics. If you are not pregnant or nursing and you develop these symptoms, your doctor should test for inflammatory breast cancer.'
                  :"अन्य स्तन कैंसर के विपरीत, भड़काऊ स्तन कैंसर आमतौर पर स्तन में एक अलग गांठ का कारण नहीं बनता है। इसलिए, एक स्तन आत्म-परीक्षा, नैदानिक ​​स्तन परीक्षा या यहां तक ​​कि एक मेम्मोग्राम भी भड़काऊ स्तन कैंसर का पता नहीं लगा सकता है। अल्ट्रासाउंड से भड़काऊ स्तन कैंसर भी याद आ सकता है। हालांकि, भड़काऊ स्तन कैंसर के कारण स्तन की सतह में परिवर्तन नग्न आंखों से देखा जा सकता है।\n\nभड़काऊ स्तन कैंसर के लक्षण तेजी से विकसित हो सकते हैं, और रोग जल्दी से प्रगति कर सकता है। स्तन की बनावट या उपस्थिति में किसी भी अचानक परिवर्तन की सूचना तुरंत अपने चिकित्सक को दी जानी चाहिए।\n\nगर्भवती या स्तनपान कराने वाली महिलाओं के लिए, लालिमा, सूजन, खुजली और खराश अक्सर स्तन संक्रमण जैसे स्तनदाह के लक्षण हैं, जो एंटीबायोटिक दवाओं के साथ इलाज योग्य है। यदि आप गर्भवती या नर्सिंग नहीं हैं और आप इन लक्षणों को विकसित करते हैं, तो आपके डॉक्टर को सूजन स्तन कैंसर के लिए परीक्षण करना चाहिए।",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  a==0?
                  'Male breast cancer symptoms':"पुरुष स्तन कैंसर के लक्षण",
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
                        text: a==0?'Lumps in the breast, usually painless\n':"स्तन में गांठ, आमतौर पर दर्द रहित\n",
                        value: false),
                    CustomText(text: a==0?'Thickening of the breast\n':"स्तन का मोटा होना\n", value: false),
                    CustomText(
                        text:a==0?
                        'Changes to the nipple or breast skin, such as dimpling, puckering or redness\n':"निप्पल या स्तन की त्वचा में परिवर्तन, जैसे कि डिंपलिंग, पक या लाली\n",
                        value: false),
                    CustomText(
                        text: a==0?'Discharge of fluid from the nipples\n':"निपल्स से तरल पदार्थ का निर्वहन\n", value: false),
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
                  child: Text(a==0?
                    'Make a Prediction':"एक भविष्यवाणी करो",
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

    if (widget.text == 'Lumps in the breast, usually painless\n'||widget.text =='स्तन में गांठ, आमतौर पर दर्द रहित\n') {
      if (widget.value == true)
        Total_male_symptoms += 1;
      else
        Total_male_symptoms -= 1;
    } else if (widget.text == 'Thickening of the breast\n'||widget.text == 'स्तन का मोटा होना\n') {
      if (widget.value == true)
        Total_male_symptoms += 1;
      else
        Total_male_symptoms -= 1;
    } else if (widget.text ==
        'Changes to the nipple or breast skin, such as dimpling, puckering or redness\n'||widget.text =="निप्पल या स्तन की त्वचा में परिवर्तन, जैसे कि डिंपलिंग, पक या लाली\n") {
      if (widget.value == true)
        Total_male_symptoms += 1;
      else
        Total_male_symptoms -= 1;
    } else if (widget.text == 'Discharge of fluid from the nipples\n'||widget.text == "निपल्स से तरल पदार्थ का निर्वहन\n") {
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
      a==0?
      "Cancel":"रद्द करना",
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
      a==0?
      "Male":"नर",
      style: TextStyle(
        fontSize: 20,
        color: Color(0xfff1a3a1),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
      calculatePrediction(context, a==0?'Male':"नर");
    },
  );
  Widget ChooseFemaleGender = FlatButton(
    child: Text(a==0?
      "Female":"महिला",
      style: TextStyle(
        fontSize: 20,
        color: Color(0xfff1a3a1),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
      calculatePrediction(context, a==0?'Female':"महिला");
    },
  );

  Widget ChooseOtherGender = FlatButton(
    child: Text(a==0?
      "Others":"अन्य",
      style: TextStyle(
        fontSize: 20,
        color: Color(0xfff1a3a1),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
      calculatePrediction(context, a==0?'Others':"अन्य");
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(a==0?"Choose your gender":"अपना लिंग चुनें"),
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
    child: Text(a==0?
      "OK":"ठीक",
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
            if (text == 'Male'||text=="नर")
              Text(((4 - Total_male_symptoms) * 25).toString() + '%\n',
                  style: TextStyle(fontSize: 30))
            else if (text == 'Female'||text=='महिला')
              Text(((20 - Total_female_symptoms) * 5).toString() + '%\n',
                  style: TextStyle(fontSize: 30))
            else
              Text(
                  ((24 - Total_male_symptoms - Total_female_symptoms) * 4)
                          .toString() +
                      '%\n',
                  style: TextStyle(fontSize: 30)),
            Text(a==0?
                "This is in no way a perfect prediction. This is just a rough estimate based on the symptoms you selected":"यह किसी भी तरह से एक आदर्श भविष्यवाणी नहीं है। यह आपके द्वारा चुने गए लक्षणों के आधार पर सिर्फ एक मोटा अनुमान है।"),
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
