import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  String imagepath;
  String name;

  CategoryWidget({required this.imagepath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(alignment: Alignment.bottomRight, children: [
      Image.asset(imagepath),
      Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          color: Colors.purple.shade700,
          child: Text(
            name,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ))
    ]));
  }
}
