import 'package:flutter/cupertino.dart';
import 'package:platform_converter/Screen/Call/view/call_ios_screen.dart';
import 'package:platform_converter/Screen/Home/view/home_ios_screen.dart';
import 'package:platform_converter/Screen/Chats/view/chats_ios_screen.dart';
import 'package:platform_converter/Screen/dash/view/dash_ios_screen.dart';

Map<String, WidgetBuilder> ios_screen_routes = {
  // '/':(context) => HomeIosScreen(),
  // 'chats':(context) => ChatsIosScreen(),
  // 'call':(context) => CallIosScreen(),
  '/':(context) => DashIosScreen(),
};