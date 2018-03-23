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
  bool _authenticated;

  _Flutter24State()
  {
    _login = new Login(onSubmit: () => onSubmit() );
    _settings = new Settings();
    _screen = _login;
    _authenticated = false;
  }

  void onSubmit()
  {
    print("Login with: " + _login.username + ' ' + _login.password);
    if (_login.username == "user" && _login.password == "password")
    {
      _setAuthenticated(true);
    }
  }

  void _goHome()
  {
    print("Go Home!");
    setState(() {
      if (_authenticated) 
      {
        print("_authenticated = $_authenticated");
        _screen = _settings;
      }
      else 
      {
        print("_authenticated = $_authenticated");
        _screen = _login;
      }
    });    
  }

  void _logout()
  {
    print("Logout!");
    _setAuthenticated(false);
  }

  void _setAuthenticated(bool auth)
  {
    setState(() {
      if (auth) 
      {
        _screen = _settings;
        _title = "Welcome";
        _authenticated = true;
      }
      else 
      {
        _screen = _login;
        _title = "Please Login";
        _authenticated = false;
      }
    });
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