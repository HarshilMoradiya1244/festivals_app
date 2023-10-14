import 'package:festival_app/screen/festival_edit_screen.dart';
import 'package:festival_app/screen/home_screen.dart';
import 'package:festival_app/screen/splash_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> screen_routes= {
  '/':(context) => SplashScreen(),
  'home': (context) => HomeScreen(),
  'festival':(context) => FestivalEditScreen(),
};
