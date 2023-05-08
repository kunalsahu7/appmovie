import 'package:appmovie/screens/Home/view/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen(),
      },
    ),
  );
}
