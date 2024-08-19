import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/home/home_screen.dart';
import 'package:todo_app/my_theme.dart';

void main() {
  runApp(todo_app());
}

class todo_app extends StatelessWidget {
  const todo_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      theme: MythemeData.lightTheme,
      darkTheme: MythemeData.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
