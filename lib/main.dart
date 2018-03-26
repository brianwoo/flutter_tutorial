import 'package:flutter/material.dart';
import 'hello.dart';
import 'flutter23.dart';
import 'flutter24/flutter24.dart';
import 'flutter25_router/router.dart';
import 'package:flutter_tutorial/flutter26_snackbar/snackbar.dart';
import 'package:flutter_tutorial/flutter27_alert_dialog/alertDialog.dart';
import 'package:flutter_tutorial/flutter28_textfield/textfield.dart' as textFieldDemo;
import 'package:flutter_tutorial/flutter29_checkbox/checkbox.dart' as checkboxDemo;
import 'package:flutter_tutorial/flutter30_radio/radio.dart' as radioDemo;
import 'package:flutter_tutorial/flutter31_switch_widget/switchWidget.dart' as switchWidgetDemo;
import 'package:flutter_tutorial/flutter32_slider/slider.dart' as slideDemo;


// void main() => flutter23();
//void main() => flutter24();
// void main() => flutter_Router();
//void main() => flutter_Snackbar();
// void main() => flutter_AlertDialog();
// void main() => textFieldDemo.flutter_TextField();
// void main() => checkboxDemo.flutter_checkbox();
// void main() => radioDemo.flutter_radio();
// void main() => switchWidgetDemo.flutter_switchWidgetDemo();
void main() => slideDemo.flutter_slider();

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