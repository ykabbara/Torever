import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'auth.dart';

class RootPage extends StatefulWidget {
  RootPage({this.auth});

  final BaseAuth auth;

  @override
  State<StatefulWidget> createState() => _RootPageState();
}

enum AuthStatus { notSignedIn, signedIn }



class _RootPageState extends State<RootPage> {

  AuthStatus authStatus = AuthStatus.notSignedIn;

  initState() {
    super.initState();
    widget.auth.currentUser().then((userId) {
      setState(() {
        authStatus =
            userId == null ? AuthStatus.notSignedIn : AuthStatus.signedIn;
      });
    });
  }

  void _signedIn(){
    setState(() {
      authStatus = AuthStatus.signedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    AuthStatus _authStatus = AuthStatus.notSignedIn;
    switch (_authStatus) {
      case AuthStatus.notSignedIn:
        return LoginPage(
          auth: Auth(),
          onSignedIn: _signedIn,
        );
      case AuthStatus.signedIn:
        return Container(
          child: Text('Welcome Home'),
        );
    }
  }
}
