import 'package:flutter/material.dart';

import 'ExplicitPage.dart';
import 'hero_page1.dart';
import 'hero_page2.dart';
import 'home_page.dart';
import 'implicite_controlller.dart';
import 'implicite_page.dart';

void main(){
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/' : (context) => HomePage(),
      'heropage1' : (context) => HeroPage1(),
      'heropage2' : (context) => HeroPage2(),
      'implicitepage' : (context) => ImplicitePage(),
      'explicitpage' : (context) => ExplicitPage(),
      'impliciteController' : (context) => impliciteController(),
    },
    )
  );
}