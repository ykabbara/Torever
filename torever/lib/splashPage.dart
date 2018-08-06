import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:torever/LoginPage.dart';
import 'package:torever/homePage.dart';

class SplashScreen extends StatefulWidget{

  @override
  _SplashScreenState createState() => new _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen>{
  void startTime ()async {
    FirebaseAuth auth = await FirebaseAuth.instance;
    auth.currentUser().then((user){
      if(user!=null){
        print('${auth.currentUser()}+neden');
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => new HomePage())
        );
      }else{
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => new LoginPage())
        );
      }
    });
  }


  @override
  void initState() {
    super.initState();
    new Timer(new Duration(seconds: 3), () {
      startTime();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Text(
            'ToreveR',
          style: TextStyle(color: Colors.white),

        ),
      ),
      backgroundColor: Colors.red,
    );
  }

}