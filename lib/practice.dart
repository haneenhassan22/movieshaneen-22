import 'package:flutter/material.dart';
import 'package:untitled/CategoryWidget.dart';
import 'package:untitled/title%20_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          margin: EdgeInsets.all(7),
          child: Row(
            children: [
              Titlewidget(title: "NEWS"),
              SizedBox(width: 2),
              Titlewidget(title: "MAGAZINE")
            ],
          ),
        ),
        Row(children: [
          CategoryWidget(
              imagepath: "assets/images/الاقتصاد.jpg", name: "مجلة الاقتصاد"),
          SizedBox(width: 2),
          CategoryWidget(
              imagepath: "assets/images/التكنولوجيا.jpg",
              name: "مجله التكنولوجيا")
        ]),
        Row(
          children: [
            CategoryWidget(
                imagepath: "assets/images/الرياضة.jpg", name: "مجلة الرياضة"),
            SizedBox(
              width: 2,
            ),
            CategoryWidget(
                imagepath: "assets/images/السياحة.jpg", name: "مجلة السياحة"),
          ],
        ),
        Row(
          children: [
            CategoryWidget(
                imagepath: "assets/images/السيارات.jpg", name: "مجلة السيارات"),
            SizedBox(
              width: 2,
            ),
            CategoryWidget(
                imagepath: "assets/images/السياسة.jpg", name: " مجلة السياسة")
          ],
        ),
        Row(
          children: [
            CategoryWidget(
                imagepath: "assets/images/الصحة.png", name: "مجلة الصحة"),
            SizedBox(
              width: 2,
            ),
            CategoryWidget(
                imagepath: "assets/images/الطهى.jpg", name: " مجلة الطهي")
          ],
        ),
        Row(
          children: [
            CategoryWidget(
                imagepath: "assets/images/المعرفة.jpg", name: "مجلة المعرفة"),
            SizedBox(
              width: 2,
            ),
            CategoryWidget(
                imagepath: "assets/images/حواء.jpg", name: " مجلة حواء")
          ],
        ),
        Row(children: [
          CategoryWidget(
              imagepath: "assets/images/الاقتصاد.jpg", name: "مجلة الاقتصاد"),
          SizedBox(width: 2),
          CategoryWidget(
              imagepath: "assets/images/التكنولوجيا.jpg",
              name: "مجله التكنولوجيا")
        ]),
        Row(
          children: [
            CategoryWidget(
                imagepath: "assets/images/الرياضة.jpg", name: "مجلة الرياضة"),
            SizedBox(
              width: 2,
            ),
            CategoryWidget(
                imagepath: "assets/images/السياحة.jpg", name: "مجلة السياحة"),
          ],
        )
      ])),
    ));
  }
}
