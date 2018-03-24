import 'package:flutter/material.dart';

void flutter_radio() => runApp(
  new MaterialApp(home: new RadioDemo())
);


class RadioDemo extends StatefulWidget
{
  @override
  _RadioDemoState createState() => new _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo>
{
  int _selected = 0;

  void _onChanged(int value)
  {
    setState(() {
      _selected = value;
    });

    print("Value = $value");
  }


  List<Widget> makeRadios()
  {
    List<Widget> list = new List<Widget>();

    for (int i=0; i < 5; i++)
    {
      //list.add(
      //   new Row(
      //     children: <Widget>[
      //       new Text("Select here $i"),
      //       new Radio(value: i, onChanged: (int value) => _onChanged(value), groupValue: _selected)
      //     ],
      //   )
      // );

      list.add(new RadioListTile(
        value: i, 
        title: new Text("Select $i"),
        onChanged: (int value) => _onChanged(value), 
        activeColor: Colors.purple,
        subtitle: new Text("subtitle here"),
        secondary: new Icon(Icons.high_quality),
        groupValue: _selected
      ));
    }

    return list;
  }



  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Radio Demo")),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: makeRadios()
          )
        ),
      )
    );
  }
}