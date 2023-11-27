import 'package:flutter/cupertino.dart';
import 'package:platform_converter/util/app_routes.dart';

void main(){
  runApp(
      CupertinoApp(
        debugShowCheckedModeBanner: false,
        routes: ios_screen_routes,
      ),
  );

}