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
import 'package:flutter_tutorial/flutter32_slider/slider.dart' as sliderDemo;
import 'package:flutter_tutorial/flutter33_dropdown/dropdown.dart' as dropdownDemo;
import 'package:flutter_tutorial/flutter35_live_template/liveTemplate.dart' as liveTemplateDemo;
import 'package:flutter_tutorial/flutter36_drawer/drawer.dart' as drawerDemo;
import 'package:flutter_tutorial/flutter37_floatingActionButton/floatingActionButton.dart' as fabDemo;
import 'package:flutter_tutorial/flutter38_appLifeCycle/appLifeCycle.dart' as appLifeCycleDemo;


// void main() => flutter23();
//void main() => flutter24();
// void main() => flutter_Router();
//void main() => flutter_Snackbar();
// void main() => flutter_AlertDialog();
// void main() => textFieldDemo.flutter_TextField();
// void main() => checkboxDemo.flutter_checkbox();
// void main() => radioDemo.flutter_radio();
// void main() => switchWidgetDemo.flutter_switchWidgetDemo();
// void main() => sliderDemo.flutter_slider();
//void main() => dropdownDemo.flutter_dropdown();
//void main() => listviewDemo.flutter_listview();
//void main() => liveTemplateDemo.flutter_liveTemplateDemo();
//void main() => drawerDemo.flutter_drawer();
//void main() => fabDemo.flutter_demo();
void main() => appLifeCycleDemo.flutter_demo();

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