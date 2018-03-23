import 'package:flutter/material.dart';

void flutter_TextField() => runApp(new MaterialApp(
  home: new TextFieldDemo()
));


class TextFieldDemo extends StatefulWidget
{
  @override
  _TextFieldDemoState createState() => new _TextFieldDemoState(); 
}


class _TextFieldDemoState extends State<TextFieldDemo>
{

  final TextEditingController _controller = new TextEditingController();
  String _text = "";

  void _onChanged(String value)
  {
    setState(() {
      _text = value;
    });
  }


  void _onPressed()
  {
    print("button pressed!  $_text");
  }

  void _onPressed2()
  {
    print("text was: ${_controller.text}");
  }
  


  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Textfield Demo"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                onChanged: (String value) => _onChanged(value),
                controller: _controller,
                maxLines: 1,
                autocorrect: true,
                //obscureText: true
                decoration: new InputDecoration(
                  icon: new Icon(Icons.print),
                  hintText: "Type something here",
                  labelText: "What's your name?"
                ),
              ),
              new RaisedButton(child: new Text("Submit"), onPressed: () => _onPressed2()),
            ],
          )
        ),
      ),
    );
  }
}