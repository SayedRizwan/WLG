//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
//import 'screens/input_page.dart';
import 'package:responsive_framework/responsive_framework.dart';


import 'Fragements/bmiPage.dart';
import 'Fragements/bfpPage.dart';
import 'Fragements/iwPage.dart';
import 'Fragements/wthPage.dart';
import 'routes/pageRoute.dart';

// import 'package:device_preview/device_preview.dart';

void main() => runApp(BMICalculator());


class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFFA0E21),
        scaffoldBackgroundColor: Color(0xFFA0E21),
      ),
      //changing
     // home: InputPage(),
     home:  bmiPage(),
     routes:  {
      pageRoutes.bmi: (context) => bmiPage(),
       pageRoutes.bfp: (context) => bfpPage(),
       pageRoutes.wth: (context) => wthPage(),
       pageRoutes.iw:(context) => iwPage(),
       
  
     },
    );
  }
}


// class MyScaffold extends StatelessWidget {

//   final Widget body;

//   MyScaffold({this.body});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      body: body,
//      drawer: MyDrawer(...),
//     );
//   }
// }

