import 'package:flutter/material.dart';

void flutter_AlertDialog() => runApp(new AlertDialogDemo());

enum MyDialogAction {
  YES,
  NO,
  MAYBE
}

class AlertDialogDemo extends StatefulWidget
{
  @override
  _AlertDialogState createState() => new _AlertDialogState(); 
}

class _AlertDialogState extends State<AlertDialogDemo>
{
  String _text = '';

  void _onChange(String value)
  {
    setState(() {
      _text = value;
    });
  }

  void _dialogResult(BuildContext context, MyDialogAction value)
  {
    print("You selected = $value");
    Navigator.pop(context);
  }

  void _showAlert(BuildContext context, String value)
  {
    if (value.isEmpty) return;

    AlertDialog dialog = new AlertDialog(
      content: new Text(
        value, 
        style: new TextStyle(fontSize: 30.0)),
      actions: <Widget>[
        new FlatButton(onPressed:() => _dialogResult(context,MyDialogAction.YES), child: new Text("Yes")),
        new FlatButton(onPressed:() => _dialogResult(context,MyDialogAction.NO), child: new Text("No")),
        new FlatButton(onPressed:() => _dialogResult(context, MyDialogAction.MAYBE), child: new Text("Maybe"))
      ],
    );

    showDialog(context: context, child: dialog);
  }

  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(title: new Text("Alert Dialog Demo")),
        body: new Container(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new TextField(onChanged: (String value) => _onChange(value)),
                // new RaisedButton(child: new Text("Alert!"), onPressed: () { _showAlert(context, _text); })

                // Just RaisedButton isn't work for some reason.  Had to use Builder and pass the context
                // to _showAlert().
                new Builder(builder: (context) {
                  return new RaisedButton(
                    child: new Text("Alert!"), 
                    onPressed: () => _showAlert(context, _text)
                  );
                })
                
              ],
            ),
          )
        ),
      ),
    );
  }
}