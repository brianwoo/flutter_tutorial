import "package:flutter/material.dart";
import "dart:async";

void flutter_demo() => runApp(new MaterialApp(home: new Demo()));

class Demo extends StatefulWidget
{
  @override
  _DemoState createState() => new _DemoState();
}

enum Answer
{
  YES,
  NO,
  MAYBE
}

class _DemoState extends State<Demo>
{
  String _answer = "";

  void _setAnswer(String value)
  {
    setState(() {
      // TODO - act on the answer
      _answer = value;
    });
  }


  Future<Null> _askUser() async
  {
    Answer answer = await showDialog(
        context: context,
        child: new SimpleDialog(
          title: new Text("Do you like Flutter?"),
          children: <Widget>[
            new SimpleDialogOption(
                onPressed: () => Navigator.pop(context, Answer.YES), child: const Text("Yes")),
            new SimpleDialogOption(
                onPressed: () => Navigator.pop(context, Answer.NO), child: const Text("No")),
            new SimpleDialogOption(
                onPressed: () => Navigator.pop(context, Answer.MAYBE), child: const Text("Maybe"))
          ],
        )
    );

    switch(answer)
    {
      case Answer.YES:
        _setAnswer(Answer.YES.toString());
        break;
      case Answer.NO:
        _setAnswer(Answer.NO.toString());
        break;
      case Answer.MAYBE:
        _setAnswer(Answer.MAYBE.toString());
        break;
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
            new Text("You answered: $_answer"),
            new RaisedButton(
                child: new Text("Click here ")
                ,onPressed: () => _askUser())
          ],
        ),
        padding: new EdgeInsets.all(32.0),
      )
    );
  }
}
