import 'package:flutter/material.dart';
import 'package:flutternavigator/home.dart';
import 'package:flutternavigator/screens/battery.dart';
import 'package:flutternavigator/screens/contacts.dart';
import 'package:flutternavigator/screens/page_view_simple.dart';
import 'package:flutternavigator/screens/settigns.dart';
import 'package:flutternavigator/screens/infinite_scroll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator test app',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      routes: <String, WidgetBuilder> {
        '/infinite_scroll': (BuildContext context) => InfiniteScroll(),
        '/page_view_simple' : (BuildContext context) => PageViewSimple(),
        '/page_view_infinite' : (BuildContext context) => PageViewInfinite(),
        Contacts.routeName: (BuildContext context) =>  Contacts(),
        Settings.routeName: (BuildContext context) =>  Settings(),
        Battery.routeName: (BuildContext context) =>  Battery()
      },
    );
  }
}

