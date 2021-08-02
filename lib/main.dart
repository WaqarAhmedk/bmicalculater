import 'package:bmicalculater/Screens/appbody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xFF060813),
        scaffoldBackgroundColor: Color(0xFF060813),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
        // primaryColor: Color(0xFF0A0B17),
        //backgroundColor: Color(0xFF0A0B17),
        //cardTheme: CardTheme(color: Color(0xFF0A0B17)),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF060813),
        ),
      ),
      home: Appbody(),
    );
  }
}
