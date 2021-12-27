import 'package:day2/pages/homepage.dart';
import 'package:day2/pages/loginpage.dart';
import 'package:day2/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginpage,
      routes: {
        MyRoutes.loginpage: (context) => Loginpage(),
        MyRoutes.homepage: (context) => Homepage(),
      },
      themeMode: ThemeMode.light,
      theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          brightness: Brightness.light,
          primaryColor: Colors.yellowAccent),
    );
  }
}
