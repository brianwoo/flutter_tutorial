import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class Login extends StatelessWidget
{

  final VoidCallback onSubmit;
  static final TextEditingController _user = new TextEditingController();
  static final TextEditingController _pass = new TextEditingController();

  String get username => _user.text;
  String get password => _pass.text;

  const Login({Key key, @required this.onSubmit}) : super(key: key);



  @override
  Widget build(BuildContext context)
  {
    return new Column(
      children: <Widget>[
        new TextField(
          controller: _user, decoration: new InputDecoration(hintText: "Enter a Username"),
        ),
        new TextField(
          controller: _pass, decoration: new InputDecoration(hintText: "Enter a Password"), obscureText: true,
        ),
        new RaisedButton(child: new Text("Submit"), onPressed: onSubmit)
      ]
    );
  }
}