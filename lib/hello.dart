import 'package:flutter/material.dart';


class Hello extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new Container(
        padding: const EdgeInsets.all(5.0),
        child: new Column(
          children: <Widget>[
            new Text('hello'),
            new Text('world'),
            new Text('!!!')
          ],
        )
    );
  }
}