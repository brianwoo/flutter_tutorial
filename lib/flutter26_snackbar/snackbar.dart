import 'package:flutter/material.dart';

void flutter_Snackbar() => runApp(new Snackbar());


class Snackbar extends StatefulWidget
{
 
  @override
  _SnackbarState createState() => new _SnackbarState();

}


class _SnackbarState extends State<Snackbar>
{
  String _text = "";
  final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();

  void _onChange(String value) 
  {
    setState(() {
      print(value);
      _text = value;
    });
  }


  void _showSnackbar(String value)
  {
    if (value.isEmpty) return;

    var state = _scaffoldState.currentState;
    print("s state = $state");

    _scaffoldState.currentState.showSnackBar(
      new SnackBar(
        content: new Text(value)
      )
    );
  }


  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      title: "Snackbar Demo",
      home: new Scaffold(
        key: _scaffoldState,
        appBar: new AppBar(
          title: new Text("Snackbar Demo")
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new TextField(onChanged: (String value) => _onChange(value)),
                new RaisedButton(
                  child: new Text("SnackBar!"), 
                  onPressed: () => _showSnackbar(_text))
              ],
            )
          )
        )
      )
    );
  }
}