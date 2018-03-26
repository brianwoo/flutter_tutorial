import "package:flutter/material.dart";

void flutter_demo() => runApp(new MaterialApp(home: new Demo()));

class Demo extends StatefulWidget
{
  @override
  _DemoState createState() => new _DemoState();
}

class _DemoState extends State<Demo> with WidgetsBindingObserver
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Demo")),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Text("Widget")
          ],
        ),
        padding: new EdgeInsets.all(32.0),
      )
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state)
  {
    print("*** state = ${state.toString()}");
    switch (state)
    {
      case AppLifecycleState.inactive:
        print("*** inactive ***");
        break;
      case AppLifecycleState.paused:
        print("*** paused ***");
        break;
      case AppLifecycleState.resumed:
        print("*** resumed ***");
        break;
      case AppLifecycleState.suspending:
        print("*** suspending ***");
        break;
    }
  }

  @override
  void initState()
  {
    print("*** initState ***");
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose()
  {
    print("*** dispose ***");
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();

  }

}
