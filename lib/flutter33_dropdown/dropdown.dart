import 'package:flutter/material.dart';

flutter_dropdown() => runApp(new MaterialApp(
    home: new DropdownDemo()
  )
);



class DropdownDemo extends StatefulWidget
{
  @override
  _DropdownDemoState createState() => new _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo>
{

  String _value = null;
  List<String> _values = new List<String>();

  @override
  void initState()
  {
    //super.initState();
    _values.addAll(["Brian", "Chris", "Heather", "Tammy"]);
    _value = _values.elementAt(0);
  }

  void _onChanged(String value)
  {
    setState(() {
      _value = value;
    });
  }

  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Dropdown Button Demo")),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text(_values.toString()),
            new DropdownButton(
              value: _value,
              onChanged: (String value) => _onChanged(value),
              items: _values.map((String val) {
                return new DropdownMenuItem(
                  value: val,
                  child: new Row(children: <Widget>[
                    new Icon(Icons.home),
                    new Text(" $val")
                  ],)
                );
              }).toList()
            )
          ],          
        ),
      ),
    );
  }
  
}