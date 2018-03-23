import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/second.dart';
import 'screens/third.dart';


void flutter_Router() => runApp(new Router());


class Router extends StatelessWidget
{
 
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      title: "Navigation",
      routes: <String, WidgetBuilder> {
        "/Home": (BuildContext context) => new Home(),
        "/Second": (BuildContext context) => new Second(),
        "/Third": (BuildContext context) => new Third()
      },
      home: new Home()
    );
  }

}