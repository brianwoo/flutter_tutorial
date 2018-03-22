import 'package:flutter/material.dart';


void flutter23() => runApp(new MyApp());

void main() => runApp(new MyApp());

// Will not change
class MyApp extends StatefulWidget
{
  @override
  _MyAppState createState() => new _MyAppState();
}


// Will change
class _MyAppState extends State<MyApp>
{
  String _title = "App Bar Demo";
  String _myState = 'NO STATE';

  void _pressed(String message)
  {
    // HAVE TO USE setState() to change the state!  Can't just change the _myState
    setState(() {
      _myState = message;
    });

    // WRONG
    //_myState = message;
    print(message);

  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.add_alert), onPressed: () { _pressed("Alert pressed"); }),
            new IconButton(icon: new Icon(Icons.print), onPressed: () { _pressed("Print pressed"); }),
            new IconButton(icon: new Icon(Icons.people), onPressed: () { _pressed("People pressed"); }),
            new RaisedButton(child: new Text("Button"), onPressed: () {_pressed("BOOM!!!");})
          ]
        ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Text(_myState)
          )
        )
      ),
    );
  }


}