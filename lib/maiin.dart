import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: homescreen.routename,
        routes: {homescreen.routename: (context) => homescreen()});
  }
}
