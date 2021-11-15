import 'package:flutter/material.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageScreen(),
    );
  }
}

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Constants.scaffoldcolor,
      body: Container(decoration: Constants.scaffoldcontainerdecoration),
    ));
  }
}

class Constants {
  static const scaffoldcolor = Colors.white70;
  static const scaffoldlineargradientcolors = [
    Colors.blue,
    Colors.orangeAccent
  ];
  static const scaffoldcontainerdecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: scaffoldlineargradientcolors,
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
    ),
  );
}
