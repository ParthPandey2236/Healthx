import 'package:flutter/material.dart';
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
      body:SafeArea(
        child:SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 60.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(

                  "Do's",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.green[400],
                  ),
                ),
              ),
              Card(
               child: ListTile(
                 title: Text(
                     'Leafy green vegetables'
                 ),
                 subtitle: Text(
                   'Leafy green vegetables contain carotenoid antioxidants, including beta carotene, lutein, and zeaxanthin, higher blood levels of which are associated with reduced breast cancer risk',
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
                child: ListTile(
                  title: Text(
                      'Citrus fruits'
                  ),
                  subtitle: Text(
                    'Citrus fruits are teeming with compounds that may protect against breast cancer, including folate, vitamin C, and carotenoids like beta cryptoxanthin and beta carotene, plus flavonoid antioxidants like quercetin, hesperetin, and naringenin',
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
                child: ListTile(
                  title: Text(
                      'Fatty fish'
                  ),
                  subtitle: Text(
                    'Fatty fish, including salmon, sardines, and mackerel, are known for their impressive health benefits. Their omega-3 fats, selenium, and antioxidants like canthaxanthin may offer cancer-protective effects',
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
                child: ListTile(
                  title: Text(
                      'Berries'
                  ),
                  subtitle: Text(
                    'Berries’ antioxidants, including flavonoids and anthocyanins, have been shown to protect against cellular damage, as well as the development and spread of cancer cells',
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
                child: ListTile(
                  title: Text(
                      'Beans'
                  ),
                  subtitle: Text(
                    'Beans are loaded with fiber, vitamins, and minerals. Specifically, their high fiber content may protect against breast cancer.',
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
                "Don'ts",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.red[600],

                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                      'Fast food'
                  ),
                  subtitle: Text(
                    'Eating fast food regularly is associated with many downsides, including an increased risk of heart disease, diabetes, obesity, and breast cancer',
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
                child: ListTile(
                  title: Text(
                      'Fried foods'
                  ),
                  subtitle: Text(
                    'Research shows that a diet high in fried foods may significantly increase your risk of breast cancer. Indeed, in a study in 620 Iranian women, fried food intake was the largest risk factor for breast cancer development ',
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
                child: ListTile(
                  title: Text(
                      'Processed meats'
                  ),
                  subtitle: Text(
                    'Processed meats like bacon and sausage may raise your risk of breast cancer. One analysis of 15 studies linked high processed meat intake to a 9% greater breast cancer risk',
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
                child: ListTile(
                  title: Text(
                      'Added sugar'
                  ),
                  subtitle: Text(
                    'A diet high in added sugar may significantly raise your risk of breast cancer by increasing inflammation and the expression of certain enzymes related to cancer growth and spread',
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
                child: ListTile(
                  title: Text(
                      'Refined carbs'
                  ),
                  subtitle: Text(
                    'Diets high in refined carbs, including the typical Western diet, may increase breast cancer risk. Try replacing refined carbs like white bread and sugary baked goods with whole grain products and nutrient-dense veggies ',
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
                'Exercise',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.green[400],
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/waling.jpg'),
                    //height: 100.0,
                    //width: 5.0,
                  ),
                  title: Text(
                    'Waking'
                  ) ,
                  subtitle: Text(
                    'Maintain a healthy weight. Prevent or manage various conditions, including heart disease, high blood pressure and type 2 diabetes. Strengthen your bones and muscles.',
                  ),
                ),
                shadowColor: Colors.green[700],
                elevation: 8.0,
              ),
              Card(
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/yoga.jpg'),
                    //height: 100.0,
                    //width: 5.0,
                  ),
                  title: Text(
                      'Yoga'
                  ) ,
                  subtitle: Text(
                    'Regular yoga practice creates mental clarity and calmness; increases body awareness; relieves chronic stress patterns; relaxes the mind; centers attention; and sharpens concentration',
                  ),
                ),
                shadowColor: Colors.green[700],
                elevation: 8.0,
              ),
              Card(
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/pilates.jpg'),
                    //height: 100.0,
                    //width: 5.0,
                  ),
                  title: Text(
                      'Pilates'
                  ) ,
                  subtitle: Text(
                    'Increased muscle strength and tone, particularly of your abdominal muscles, lower back, hips and buttocks (the core muscles of your body)',
                  ),
                ),
                shadowColor: Colors.green[700],
                elevation: 8.0,
              ),
              Card(
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/tai chi.png'),
                    //height: 100.0,
                    //width: 5.0,
                  ),
                  title: Text(
                      'Tai Chi'
                  ) ,
                  subtitle: Text(
                    'Decreased stress, anxiety and depression,Improved mood,Improved aerobic capacity,Increased energy and stamina,Improved flexibility, balance and agility.'
                  ),
                ),
                shadowColor: Colors.green[700],
                elevation: 8.0,
              ),
              Card(
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/dancing.jpg'),
                    //height: 100.0,
                    //width: 5.0,
                  ),
                  title: Text(
                      'Dancing'
                  ) ,
                  subtitle: Text(
                      'Improved condition of your heart and lungs. increased muscular strength, endurance and motor fitness. increased aerobic fitness. improved muscle tone and strength.'
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
