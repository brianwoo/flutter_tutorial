import 'package:flutter/material.dart';

flutter_slider() => runApp(new MaterialApp(
    home: new SliderDemo()
  )
);


class SliderDemo extends StatefulWidget
{
  @override
  _SliderDemoState createState() => new _SliderDemoState();
}


class _SliderDemoState extends State<SliderDemo>
{

  double _value = 0.0;

  void _onChanged(double value)
  {
    setState(() {
      _value = value;
      // print("value is $_value");
    });
  }


  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Slider Demo")),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Slider value is ${_value.round()}"),
              new Slider(
                min: 0.0,
                max: 100.0,
                value: _value, 
                onChanged: (double value) => _onChanged(value)),

              new Text("Progress value is $_value"),
              new LinearProgressIndicator(
                value: _value * 0.01
              )
            ],
          )
        ),
      ),
    );
  }
}