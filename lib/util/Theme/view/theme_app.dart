// import 'package:flutter/material.dart';
//
// ThemeData lightTheme = ThemeData(
//     useMaterial3: true,
//     appBarTheme: const AppBarTheme(
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         titleTextStyle: TextStyle(
//           fontSize: 25,
//           color: Colors.black,
//         )),
//     textTheme: const TextTheme(
//       titleLarge: TextStyle(fontSize: 25, color: Colors.black),
//       titleMedium: TextStyle(fontSize: 15, color: Colors.black),
//     ),
//     brightness: Brightness.light);
//
// ThemeData darkTheme = ThemeData(
//     useMaterial3: true,
//     appBarTheme: const AppBarTheme(
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         titleTextStyle: TextStyle(
//           fontSize: 25,
//           color: Colors.white,
//         )),
//     textTheme: const TextTheme(
//       titleLarge: TextStyle(fontSize: 25, color: Colors.white),
//       titleMedium: TextStyle(fontSize: 15, color: Colors.white54),
//     ),
//     brightness: Brightness.dark);

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoThemeData lightCupertinoTheme = CupertinoThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue, // Change this to your desired primary color
  barBackgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: CupertinoTextThemeData(
    navLargeTitleTextStyle: TextStyle(fontSize: 25, color: Colors.black),
    navTitleTextStyle: TextStyle(fontSize: 15, color: Colors.black),
  )
);

CupertinoThemeData darkCupertinoTheme = CupertinoThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blue, // Change this to your desired primary color
  barBackgroundColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  textTheme: CupertinoTextThemeData(
    navLargeTitleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
    navTitleTextStyle: TextStyle(fontSize: 15, color: Colors.white54),
  ),
);
