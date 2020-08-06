import 'package:flutter/material.dart';
import 'package:pro_3/screens/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nepali Recipes',
      theme: ThemeData(
        primaryColor: Color(0xff263341),
        accentColor: Color(0xff8DB464),
      ),
      initialRoute: '/homePage',
      routes: routes,
    );
  }
}