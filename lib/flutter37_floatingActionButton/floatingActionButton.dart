import "package:flutter/material.dart";

void flutter_demo() => runApp(new MaterialApp(home: new FabDemo()));

class FabDemo extends StatefulWidget
{
  @override
  _FabDemo createState() => new _FabDemo();
}

class _FabDemo extends State<FabDemo>
{
  String _lastPressed = "never";

  void onPressed()
  {
    print("Pressed!");
    setState(() {
      DateTime current = new DateTime.now();
      _lastPressed = current.toString();
    });
  }


  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Demo")),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.timer),
          backgroundColor: Colors.red,
          onPressed: () => onPressed()
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Text("Last pressed: $_lastPressed")
          ],
        ),
        padding: new EdgeInsets.all(32.0),
      )
    );
  }
}
