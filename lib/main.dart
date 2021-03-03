import 'package:flutter/material.dart';
import 'package:tarea3/front.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primaryColor: Colors.indigo),
      home: Front(),
    ); 
  }
}