import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'auth.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Torever',
      home: LoginPage(auth: Auth()),
    );
  }
}