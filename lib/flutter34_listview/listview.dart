import 'package:flutter/material.dart';

flutter_listview() => runApp(new MaterialApp(home: new ListviewDemo()));

class ListviewDemo extends StatefulWidget
{
  _ListviewDemoState createState() => new _ListviewDemoState();
}


class _ListviewDemoState extends State<ListviewDemo>
{
  List<bool> _data = new List<bool>();

  @override
  void initState() {
    setState(() {
      for (int i=0; i < 10; i++)
      {
        _data.add(false);
      }
    });
  }

  void _onChange(bool value, int index)
  {
    setState(() {
      _data[index] = value;
    });
  }


  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Listview Demo")),
      body: new ListView.builder(
          itemCount: _data.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              child: new Container(
                padding: new EdgeInsets.all(5.0),
                child: new Column(
                  children: <Widget>[
                    new Text("This is item $index"),
                    new CheckboxListTile(
                        value: _data[index],
                        controlAffinity: ListTileControlAffinity.leading, //checkbox on the left
                        title: new Text("Check me item $index"),
                        onChanged: (bool value) => _onChange(value, index))
                  ],
                ),
              ),
            );
          }
      ),
    );
  }


}