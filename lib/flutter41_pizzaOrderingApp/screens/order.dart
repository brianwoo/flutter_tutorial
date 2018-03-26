import "package:flutter/material.dart";
import "package:flutter_tutorial/flutter41_pizzaOrderingApp/screens/review.dart";
import "package:flutter_tutorial/flutter41_pizzaOrderingApp/code/pizza.dart";

class Order extends StatefulWidget
{
  @override
  _OrderState createState() => new _OrderState();
}

class _OrderState extends State<Order>
{
  Pizza _pizzaOrder = new Pizza();

  void _setSize(String size)
  {
    setState(() {
      _pizzaOrder.size = size;
    });
  }

  void _setTopping(int index, bool value)
  {
    setState(() {
      String key = _pizzaOrder.toppings.keys.elementAt(index);
      _pizzaOrder.toppings[key] = value;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Order Pizza")),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new DropdownButton(
                  value: _pizzaOrder.size,
                  items: Pizza.sizes.map((String value) {
                    return new DropdownMenuItem(
                        value: value,
                        child: new Row(
                          children: <Widget>[
                            new Icon(Icons.local_pizza),
                            new Text(" Size: $value")
                          ],
                        ));
                  }).toList(),
                  onChanged: (String value) => _setSize(value)
              ),
              new Expanded(
                  child: new ListView.builder(
                      shrinkWrap: true,
                      itemCount: _pizzaOrder.toppings.length,
                      itemBuilder: (BuildContext context, int index) {
                        return new CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            title: new Text(_pizzaOrder.toppings.keys.elementAt(index)),
                            value: _pizzaOrder.toppings.values.elementAt(index),
                            onChanged: (bool value) => _setTopping(index, value));
                      }
                  )),

              new RaisedButton(
                  child: new Text("Continue"),
                  onPressed: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (BuildContext context) => new Review(order: _pizzaOrder)
                      )
                  )
              )
            ],
          ),
        ),

      )
    );
  }
}
