import 'package:flutter/material.dart';
import 'hello.dart';
import 'flutter23.dart';
import 'flutter24/flutter24.dart';


// void main() => flutter23();
void main() => flutter24();


// void main() {
//   runApp(
//     new Center(
//       child: new MyApp(),
//     ),
//   );
// }

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      title: "Basic Layouts",
      home: new Scaffold(
        appBar: new AppBar(title: new Text("Basic Layouts")),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Hello(),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Hello(),
                    new Hello(),
                    new Hello()
                  ],
                )
              ]
            )
          )
        )
      )
    );
  }
}