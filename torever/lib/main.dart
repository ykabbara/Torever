import 'package:flutter/material.dart';
import 'splashPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Torever',
      home: SplashScreen(),
    );
  }
}