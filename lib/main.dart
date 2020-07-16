import 'package:flutter/material.dart';
import 'package:flutter_diet_app/ui/profile_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dite App',

      theme: ThemeData(
      primaryColor: Color(0xFFFF4700),
      ),
      home: ProfileScreen(),
    );
  }
}