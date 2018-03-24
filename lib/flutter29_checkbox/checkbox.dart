import 'package:flutter/material.dart';

void flutter_checkbox() => runApp(
  new MaterialApp(home: new CheckboxDemo())
);


class CheckboxDemo extends StatefulWidget
{
  @override
  _CheckboxDemoState createState() => new _CheckboxDemoState();
}


class _CheckboxDemoState extends State<CheckboxDemo>
{

  bool _isChecked = false;



  void _onChanged(bool value)
  {
    setState(() {
      _isChecked = value;
    });
  }


  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Checkbox Demo"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Text("Check it: "),
                  new Checkbox(value: _isChecked, onChanged: (bool val) => _onChanged(val))
                ],
              ),
              new CheckboxListTile(
                title: new Text("Check HERE: "),
                activeColor: Colors.red,
                secondary: new Icon(Icons.home),
                value: _isChecked, 
                onChanged: (bool val) => _onChanged(val))
            ],
          ),
        ),
      )
    );
  }
  
}