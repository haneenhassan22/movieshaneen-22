import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Titlewidget extends StatelessWidget {
  String title;

  Titlewidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(3),
        margin: EdgeInsets.only(right: 5),
        width: 190,
        color: Colors.purple,
        child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white)));
  }
}
