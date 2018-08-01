import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  String _email;
  String _password;

  bool validateAndSave() {
    final from = formKey.currentState;
    if (from.validate()) {
      from.save();
      return true;
    }
    return false;
  }

  void validateAndSubmit(){
    if(validateAndSave()){

    }

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Torever Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) =>
                    value.isEmpty ? 'Email cannot be empty' : null,
                onSaved: (value) => _email = value,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
                validator: (value) =>
                    value.isEmpty ? 'Password cannot be empty' : null,
                onSaved: (value) => _password = value,
              ),
              RaisedButton(
                onPressed: validateAndSubmit,
                child: Text('Test '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
