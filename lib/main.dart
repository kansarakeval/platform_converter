import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter/Screen/Home/provider/home_provider.dart';
import 'package:platform_converter/Screen/Setting/provider/setting_provider.dart';
import 'package:platform_converter/Screen/dash/provider/dash_ios_provider.dart';
import 'package:platform_converter/util/Theme/provider/theme_provider.dart';
import 'package:platform_converter/util/Theme/view/theme_app.dart';
import 'package:platform_converter/util/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DashIosProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SettingProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) {
          value.changeThem();
          return context
              .read<ThemeProvider>()
              .isUi ?
          MaterialApp(
            theme: value.isLight ? lightTheme : darkTheme,
            debugShowCheckedModeBanner: false,
            routes: Android_screen_routes,
          ):CupertinoApp(
                  theme:
                      value.isLight ? lightCupertinoTheme : darkCupertinoTheme,
                  debugShowCheckedModeBanner: false,
                  routes: ios_screen_routes,
                );
        },
      ),
    ),
  );
}
