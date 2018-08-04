import 'package:flutter/material.dart';
import 'auth.dart';
import 'rootPage.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
        title: 'Flutter login demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RootPage(auth: new Auth())
    );
  }
}
