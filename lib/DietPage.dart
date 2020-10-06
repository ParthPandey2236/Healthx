import 'package:flutter/material.dart';

import 'AboutPage.dart';
void main(){
  runApp(MaterialApp(
    home: Diet(),
  ));
}

class Diet extends StatefulWidget {
  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1a3a1),
      body:SafeArea(
          child:SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 60.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  a==0?
                  "Do's":'करने योग्य',
                  style: TextStyle(
                    fontSize: 42.0,
                    fontFamily: 'SansitaSwashed',
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
              Card(

                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
               child: ListTile(

                 title: Text(
                   a==0?
                     'Leafy green vegetables':'पत्तेदार हरी सब्जियां',
                 ),
                 subtitle: Text(
                   a==0?
                   'Leafy green vegetables contain carotenoid antioxidants, including beta carotene, lutein, and zeaxanthin, higher blood levels of which are associated with reduced breast cancer risk':

                   "पत्तेदार हरी सब्जियों में कैरोटीनॉयड एंटीऑक्सिडेंट होते हैं, जिनमें बीटा कैरोटीन, ल्यूटिन और ज़ेक्सैन्थिन शामिल हैं, जिनमें से उच्च रक्त स्तर कम स्तन कैंसर के जोखिम से जुड़े होते हैं"
                 ),
                 leading: CircleAvatar(
                   radius: 25.0,
                 backgroundImage: AssetImage('assets/veg green.jpg'),

                 ),
               ) ,
                shadowColor: Colors.green[700] ,
                elevation: 8.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  title: Text(
                    a==0?
                      'Citrus fruits':'खट्टे फल'
                  ),
                  subtitle: Text(
                    a==0?
                    'Citrus fruits are teeming with compounds that may protect against breast cancer, including folate, vitamin C, and carotenoids like beta cryptoxanthin and beta carotene, plus flavonoid antioxidants like quercetin, hesperetin, and naringenin'
                    :
                  "खट्टे फल ऐसे यौगिकों से युक्त होते हैं, जो स्तन कैंसर से बचाव कर सकते हैं, जिनमें फोलेट, विटामिन सी और बीटा कैरोटॉक्सांथिन और बीटा कैरोटीन जैसे कैरोटीनॉयड शामिल हैं, साथ ही क्वैरसेटिन, हिक्सेटीन और नारिनिन जैसे फ्लेवोनॉयड एंटीऑक्सिडेंट भी हैं।",
                  ),
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/image1.jpg'),
                  ),
                ) ,
                shadowColor: Colors.green[700] ,
                elevation: 8.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  title: Text(
                    a==0?
                      'Fatty fish':"फैटी मछली"
                  ),
                  subtitle: Text(
                    a==0?
                    'Fatty fish, including salmon, sardines, and mackerel, are known for their impressive health benefits. Their omega-3 fats, selenium, and antioxidants like canthaxanthin may offer cancer-protective effects.'
                    :"वसायुक्त मछली, जिनमें सामन, सार्डिन और मैकेरल शामिल हैं, अपने प्रभावशाली स्वास्थ्य लाभों के लिए जाने जाते हैं। उनके ओमेगा -3 वसा, सेलेनियम, और कैंथैक्सैटिन जैसे एंटीऑक्सिडेंट कैंसर-सुरक्षात्मक प्रभाव प्रदान कर सकते हैं।",
                  ),
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/fatty fish.jpg'),
                  ),
                ) ,
                shadowColor: Colors.green[700] ,
                elevation: 8.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  title: Text(
                    a==0?
                      'Berries':'जामुन'
                  ),
                  subtitle: Text(
                    a==0?
                    'Berries’ antioxidants, including flavonoids and anthocyanins, have been shown to protect against cellular damage, as well as the development and spread of cancer cells'
                    :"फ़्लेवोनोइड्स और एंथोसायनिन सहित बेरीज के एंटीऑक्सिडेंट, सेलुलर क्षति के साथ-साथ कैंसर कोशिकाओं के विकास और प्रसार से बचाने के लिए दिखाए गए हैं।",
                  ),
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/berries.jpg'),
                  ),
                ) ,
                shadowColor: Colors.green[700] ,
                elevation: 8.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  title: Text(
                    a==0?
                      'Beans':"फलियां"
                  ),
                  subtitle: Text(
                    a==0?
                    'Beans are loaded with fiber, vitamins, and minerals. Specifically, their high fiber content may protect against breast cancer.'
                    :"बीन्स फाइबर, विटामिन और खनिजों से भरे होते हैं। विशेष रूप से, उनकी उच्च फाइबर सामग्री स्तन कैंसर से रक्षा कर सकती है।",
                  ),
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/beans.jpg'),
                  ),
                ) ,
                shadowColor: Colors.green[700] ,
                elevation: 8.0,
              ),
              Text(
                a==0?
                "Don'ts":"क्या न करें",
                style: TextStyle(
                  fontSize: 42.0,
                  fontFamily: 'SansitaSwashed',
                  color: Colors.white,

                ),
              ),
              SizedBox(height: 10.0),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  title: Text(
                    a==0?
                      'Fast food':"फास्ट फूड"
                  ),
                  subtitle: Text(
                    a==0?
                    'Eating fast food regularly is associated with many downsides, including an increased risk of heart disease, diabetes, obesity, and breast cancer.'
                    :"नियमित रूप से फास्ट फूड खाने से दिल की बीमारी, मधुमेह, मोटापा और स्तन कैंसर का खतरा बढ़ जाता है।",
                  ),
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/fast food.jpg'),
                  ),
                ) ,
                shadowColor: Colors.red[700] ,
                elevation: 8.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  title: Text(
                    a==0?
                      'Fried foods':"तले हुए खाद्य पदार्थ"
                  ),
                  subtitle: Text(
                    a==0?
                    'Research shows that a diet high in fried foods may significantly increase your risk of breast cancer. Indeed, in a study in 620 Iranian women, fried food intake was the largest risk factor for breast cancer development. '
                    :"शोध से पता चलता है कि तले हुए खाद्य पदार्थों में उच्च आहार से आपके स्तन कैंसर का खतरा बढ़ सकता है। दरअसल, 620 ईरानी महिलाओं में एक अध्ययन में, तला हुआ भोजन का सेवन स्तन कैंसर के विकास के लिए सबसे बड़ा जोखिम कारक था।",
                  ),
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/fried food.jpg'),
                  ),
                ) ,
                shadowColor: Colors.red[700] ,
                elevation: 8.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  title: Text(
                    a==0?
                      'Processed meats':"प्रसंस्कृत माँस"
                  ),
                  subtitle: Text(
                    a==0?
                    'Processed meats like bacon and sausage may raise your risk of breast cancer. One analysis of 15 studies linked high processed meat intake to a 9% greater breast cancer risk.'
                    :"बेकन और सॉसेज जैसे प्रोसेस्ड मीट आपके स्तन कैंसर का खतरा बढ़ा सकते हैं। 15 अध्ययनों के एक विश्लेषण ने उच्च प्रसंस्कृत मांस के सेवन को 9% अधिक स्तन कैंसर के जोखिम से जोड़ा।",
                  ),
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/processed meat.jpg'),
                  ),
                ) ,
                shadowColor: Colors.red[700] ,
                elevation: 8.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  title: Text(
                    a==0?
                      'Added sugar':'अतिरिक्त चीनी'
                  ),
                  subtitle: Text(
                    a==0?
                    'A diet high in added sugar may significantly raise your risk of breast cancer by increasing inflammation and the expression of certain enzymes related to cancer growth and spread.'
                    :"जोड़ा चीनी में उच्च आहार सूजन को बढ़ाकर और कैंसर के विकास और प्रसार से संबंधित कुछ एंजाइमों की अभिव्यक्ति से स्तन कैंसर के खतरे को बढ़ा सकता है।",
                  ),
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/added sugar.jpg'),
                  ),
                ) ,
                shadowColor: Colors.red[700] ,
                elevation: 8.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  title: Text(
                    a==0?
                      'Refined carbs':"परिष्कृत कार्ब्स"
                  ),
                  subtitle: Text(
                    a==0?
                    'Diets high in refined carbs, including the typical Western diet, may increase breast cancer risk. Try replacing refined carbs like white bread and sugary baked goods with whole grain products and nutrient-dense veggies.'
                    :"विशिष्ट पश्चिमी आहार सहित परिष्कृत कार्ब्स में उच्च मात्रा में स्तन कैंसर का खतरा बढ़ सकता है। पूरे अनाज उत्पादों और पोषक तत्वों-घने veggies के साथ सफेद ब्रेड और शक्कर के पके हुए माल जैसे परिष्कृत कार्ब्स को बदलने का प्रयास करें।",
                  ),
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/refined carbs.jpg'),
                  ),
                ) ,
                shadowColor: Colors.red[700] ,
                elevation: 8.0,
              ),
              Text(
                a==0?
                'Exercise':"व्यायाम",
                style: TextStyle(
                  fontSize: 42.0,
                  fontFamily: 'SansitaSwashed',
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/waling.jpg'),
                    //height: 100.0,
                    //width: 5.0,
                  ),
                  title: Text(
                    a==0?
                    'Waking':'चलना'
                  ) ,
                  subtitle: Text(
                    a==0?
                    'Maintain a healthy weight. Prevent or manage various conditions, including heart disease, high blood pressure and type 2 diabetes. Strengthen your bones and muscles.'
                    :"स्वस्थ वजन बनाए रखें। हृदय रोग, उच्च रक्तचाप और टाइप 2 मधुमेह सहित विभिन्न स्थितियों को रोकें या प्रबंधित करें। अपनी हड्डियों और मांसपेशियों को मजबूत करें।",
                  ),
                ),
                shadowColor: Colors.green[700],
                elevation: 8.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/yoga.jpg'),
                    //height: 100.0,
                    //width: 5.0,
                  ),
                  title: Text(
                    a==0?
                      'Yoga':"योग"
                  ) ,
                  subtitle: Text(
                    a==0?
                    'Regular yoga practice creates mental clarity and calmness; increases body awareness; relieves chronic stress patterns; relaxes the mind; centers attention; and sharpens concentration.'
                    :"नियमित योग अभ्यास मानसिक स्पष्टता और शांति पैदा करता है; शरीर में जागरूकता बढ़ाता है; पुराने तनाव पैटर्न से राहत देता है; मन को शांत करता है; ध्यान केन्द्रित करता है; और एकाग्रता को तेज करता है।",
                  ),
                ),
                shadowColor: Colors.green[700],
                elevation: 8.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/pilates.jpg'),
                    //height: 100.0,
                    //width: 5.0,
                  ),
                  title: Text(
                    a==0?
                      'Pilates':"पिलेट्स"
                  ) ,
                  subtitle: Text(
                    a==0?
                    'Increased muscle strength and tone, particularly of your abdominal muscles, lower back, hips and buttocks (the core muscles of your body).'
                    :"मांसपेशियों की शक्ति और टोन में वृद्धि, विशेष रूप से आपके पेट की मांसपेशियों, पीठ के निचले हिस्से, कूल्हों और नितंबों (आपके शरीर की मूल मांसपेशियों) में।",
                  ),
                ),
                shadowColor: Colors.green[700],
                elevation: 8.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/tai chi.png'),
                    //height: 100.0,
                    //width: 5.0,
                  ),
                  title: Text(
                    a==0?
                      'Tai Chi':"ताई ची"
                  ) ,
                  subtitle: Text(
                    a==0?
                    'Decreased stress, anxiety and depression,Improved mood,Improved aerobic capacity,Increased energy and stamina,Improved flexibility, balance and agility.'
                        :"तनाव, चिंता और अवसाद, बेहतर मनोदशा, बेहतर एरोबिक क्षमता, बढ़ी हुई ऊर्जा और सहनशक्ति, बेहतर लचीलापन, संतुलन और चपलता।"
                  ),
                ),
                shadowColor: Colors.green[700],
                elevation: 8.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                margin: EdgeInsets.only(left:10.0,right:10.0 ,bottom: 8.0),
                color: Color(0xfffeebe7),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/dancing.jpg'),
                    //height: 100.0,
                    //width: 5.0,
                  ),
                  title: Text(
                    a==0?
                      'Dancing':"नृत्य"
                  ) ,
                  subtitle: Text(
                    a==0?
                      'Improved condition of your heart and lungs. increased muscular strength, endurance and motor fitness. increased aerobic fitness. improved muscle tone and strength.'
                        :"आपके दिल और फेफड़ों की बेहतर स्थिति। मांसपेशियों की ताकत, धीरज और मोटर फिटनेस में वृद्धि हुई। एरोबिक फिटनेस में वृद्धि। बेहतर मांसपेशियों की टोन और ताकत।"
                  ),
                ),
                shadowColor: Colors.green[700],
                elevation: 8.0,
              ),

            ],
          ),
        )
      )
    );
  }
}
