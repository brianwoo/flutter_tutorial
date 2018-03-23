import 'package:flutter/material.dart';
import 'settings.dart';
import 'login.dart';

void flutter24() => runApp(new Flutter24());

class _Flutter24State extends State<Flutter24>
{
  String _title = "Please Login";
  Widget _screen;
  Login _login;
  Settings _settings;

  _Flutter24State()
  {
    _login = new Login(onSubmit: () => onSubmit() );
    _settings = new Settings();
    _screen = _settings;
  }

  void onSubmit()
  {
    print("Login with: " + _login.username + ' ' + _login.password);
  }

  void _goHome()
  {
    print("Go Home!");
  }

  void _logout()
  {
    print("Logout!");
  }

  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      title: "Login Demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton( icon: new Icon(Icons.home), onPressed: () => _goHome() ),
            new IconButton( icon: new Icon(Icons.exit_to_app), onPressed: () => _logout())
          ],
        ),
        body: _screen,
      ),
    );
  }
}

class Flutter24 extends StatefulWidget
{
  @override
  _Flutter24State createState() => new _Flutter24State();
}