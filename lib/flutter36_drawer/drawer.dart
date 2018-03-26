import "package:flutter/material.dart";

void flutter_drawer() => runApp(new MaterialApp(home: new DrawerDemo()));

class DrawerDemo extends StatefulWidget {
  @override
  _DrawerDemoState createState() => new _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(backgroundColor: Colors.amber, title: new Text("Drawer Demo")),
      drawer: new Drawer(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text("Hello Drawer"),
              new RaisedButton(
                color: Colors.red,
                child: new Text("Close"),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      ),
      body: new Column(
        children: <Widget>[
          new Text("Widget")
        ],
      ),
    );
  }
}


