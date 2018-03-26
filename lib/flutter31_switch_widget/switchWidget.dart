import 'package:flutter/material.dart';

void flutter_switchWidgetDemo() => runApp(new MaterialApp(
  home: new SwitchWidgetDemo()
));



class SwitchWidgetDemo extends StatefulWidget
{
  @override
  _SwitchWidgetDemoState createState() => new _SwitchWidgetDemoState();
}


class _SwitchWidgetDemoState extends State<SwitchWidgetDemo>
{

  bool _value = false;

  void _onChanged(bool value)
  {
    setState(() {
      _value = value;
      print("switch is set to = $_value");
   });
  }


  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Switch Widget Demo")),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Switch(value: _value, onChanged: (bool value) => _onChanged(value)),
            new SwitchListTile(
              title: new Text("Turn on?"),
              activeColor: Colors.amber,
              secondary: const Icon(Icons.home),
              value: _value, 
              onChanged: (bool value) => _onChanged(value)
            )
          ],
        ),
      ),
    );
  }
}