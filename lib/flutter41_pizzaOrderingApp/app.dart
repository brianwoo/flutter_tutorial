import "package:flutter/material.dart";
import "package:flutter_tutorial/flutter41_pizzaOrderingApp/screens/home.dart";
import "package:flutter_tutorial/flutter41_pizzaOrderingApp/screens/order.dart";
import "package:flutter_tutorial/flutter41_pizzaOrderingApp/screens/review.dart";

void flutter_pizzaOrderApp() => runApp(new PizzaOrderApp());

class PizzaOrderApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
        title: "Navigation",
        routes: <String, WidgetBuilder> {
          "/Home": (BuildContext context) => new Home(),
          "/Order": (BuildContext context) => new Order(),
          "/Review": (BuildContext context) => new Review(),
        },
        home: new Home());
  }
}