import 'package:day2/pages/homepage.dart';
import 'package:day2/pages/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/": (context) => Loginpage(),
        "/home": (context) => Homepage(),
      },
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.amberAccent),
    );
  }
}
