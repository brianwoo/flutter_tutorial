import "package:flutter/material.dart";
import "dart:async";

void flutter_demo() => runApp(new MaterialApp(home: new Demo()));

class Demo extends StatefulWidget
{
  @override
  _DemoState createState() => new _DemoState();
}

class _DemoState extends State<Demo>
{

  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future<Null> _selectDate(BuildContext context) async
  {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2019)
    );

    if (picked != null && picked != _date)
    {
      print("Date Selected = ${picked.toString()}");
      setState(() {
        _date = picked;
      });
    }

  }

  Future<Null> _selectTime(BuildContext context) async
  {
    final TimeOfDay picked = await showTimePicker(
        context: context,
        initialTime: _time
    );

    if (picked != null && picked != _time)
    {
      print("Time Selected = ${picked.toString()}");
      setState(() {
        _time = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Demo")),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Text("Date Selected = ${_date.toString()}"),
            new RaisedButton(child: new Text("Select Date"), onPressed: () => _selectDate(context)),
            new Text(" "),
            new Text("Time Selected = ${_time.toString()}"),
            new RaisedButton(child: new Text("Select Time"), onPressed: () => _selectTime(context)),
          ],
        ),
        padding: new EdgeInsets.all(32.0),
      )
    );
  }
}
