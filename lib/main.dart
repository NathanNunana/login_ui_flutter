import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:loginUI/Screens/pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(backgroundColor: Colors.blueAccent), home: Pages());
  }
}
