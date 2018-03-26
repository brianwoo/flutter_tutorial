import "package:flutter/material.dart";

void flutter_liveTemplateDemo() => runApp(new MaterialApp(home: new LiveTemplateDemo()));


// type st - pick stful or stless
class LiveTemplateDemo extends StatefulWidget {

  @override
  _State createState() => new _State();
}

class _State extends State<LiveTemplateDemo> {
  @override
  Widget build(BuildContext context) {
    return new Container();
  }
}
