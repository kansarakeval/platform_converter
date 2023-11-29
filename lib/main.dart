import 'package:flutter/cupertino.dart';
import 'package:platform_converter/Screen/dash/provider/dash_ios_provider.dart';
import 'package:platform_converter/util/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => DashIosProvider(),),
    ],
    child: CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: ios_screen_routes,
    ),
  ));
}
