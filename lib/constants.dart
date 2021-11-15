import 'package:flutter/material.dart';

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
  static const widthofverticalspace = 10.0;
  static const heightofhorizontalspace = 10.0;
  static const verticalspace = SizedBox(width: widthofverticalspace);
  static const horizontalspace = SizedBox(height: heightofhorizontalspace);
  static const mainpagetitlefontsize = 21.0;
  static const mainpagetitle = "Weather-app ";
  static const mainpagetitlefontweight = FontWeight.w500;
  static const refreshiconsize = 30.0;
  static const divider = Divider();
  static const weathericoncontainerheight = 120.0;
}
