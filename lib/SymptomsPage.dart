import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Symptoms extends StatefulWidget {
  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height-75,
        decoration: BoxDecoration(
          color: Colors.white,
          // image: new DecorationImage(
          //     image: new AssetImage('assets/Pink.png'),
          //     colorFilter:
          //     ColorFilter.mode(Colors.black.withOpacity(0.2),
          //         BlendMode.dstATop),
          //     fit: BoxFit.cover
          // )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  height:90,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'Symptoms',
                      style: TextStyle(fontSize: 35,color:Colors.white,letterSpacing: 1.5),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent[200],
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(255, 182, 193, 1),
                          blurRadius: 50.0,
                          offset: Offset(0,100),
                        ),]
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Early Warning signs of breast cancer',
                  style: TextStyle(fontSize: 40),
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
              CustomText(text: 'Skin changes, such as swelling, redness, or other visible differences in one or both breasts\n'),
              CustomText(text:'Changes in the appearance of one or both nipples\n'),
              CustomText(text:'Nipple discharge other than breast milk\n'),
              CustomText(text:'General pain in/on any part of the breast\n'),
              CustomText(text:'Lumps or nodes felt on or inside of the breast\n',),
              SizedBox(height :30),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Text(
                  'Symptoms More Specific to invasive breast cancer are:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height:30),
              CustomText(text: 'Irritated or itchy breasts\n'),
              CustomText(text:'Change in breast color\n'),
              CustomText(text:'Increase in breast size or shape (over a short period of time)\n'),
              CustomText(text:'Changes in touch (may feel hard, tender or warm)\n'),
              CustomText(text:'Peeling or flaking of the nipple skin\n'),
              CustomText(text:'A breast lump or thickening\n',),
              CustomText(text:'Redness or pitting of the breast skin (like the skin of an orange) ',),

              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Ductal carcinoma symptoms',
                  style: TextStyle(fontSize: 40),
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
              SizedBox(height:30),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Lobular carcinoma symptoms',
                  style: TextStyle(fontSize: 40),
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
              SizedBox(height:30),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Inflammatory breast cancer symptoms',
                  style: TextStyle(fontSize: 40),
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
              CustomText(text: 'Red, swollen, itchy breast that is tender to the touch\n'),
              CustomText(text:'The surface of the breast may take on a ridged or pitted appearance, similar to an orange peel (often called peau d’orange)\n'),
              CustomText(text:'Heaviness, burning, or aching in one breast\n'),
              CustomText(text:'One breast is visibly larger than the other\n'),
              CustomText(text:'Inverted nipple (facing inward)\n'),
              CustomText(text:'No mass is felt with a breast self-exam\n',),
              CustomText(text:'Swollen lymph nodes under the arm and/or above the collarbone\n',),
              CustomText(text: 'Symptoms unresolved after a course of antibiotics'),
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
              SizedBox(height:30),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Male breast cancer symptoms',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              SizedBox(height: 30),
              CustomText(text: 'Lumps in the breast, usually painless\n'),
              CustomText(text:'Thickening of the breast\n'),
              CustomText(text:'Changes to the nipple or breast skin, such as dimpling, puckering or redness\n'),
              CustomText(text:'Discharge of fluid from the nipples\n'),
              SizedBox(height:10),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double height;

  CustomText({this.text,this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ListTile(
        leading: Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
        ),
        title: Transform(
          transform: Matrix4.translationValues(-25, 0.0, 0.0),
          child: Text(
              text,
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18)),
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
    var controlpoint = Offset(5, size.height);
    var endpoint = Offset(50, size.height);
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
