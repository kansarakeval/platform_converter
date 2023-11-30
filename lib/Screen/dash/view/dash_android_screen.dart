import 'package:flutter/material.dart';
import 'package:platform_converter/Screen/Call/view/call_android_Screen.dart';
import 'package:platform_converter/Screen/Chats/view/chat_android_screen.dart';
import 'package:platform_converter/Screen/Home/view/home_android_screen.dart';
import 'package:platform_converter/Screen/Setting/view/setting_android_screen.dart';
import 'package:platform_converter/Screen/dash/provider/dash_ios_provider.dart';
import 'package:provider/provider.dart';

class DashAndroidScreen extends StatefulWidget {
  const DashAndroidScreen({super.key});

  @override
  State<DashAndroidScreen> createState() => _DashAndroidScreenState();
}

class _DashAndroidScreenState extends State<DashAndroidScreen> {
  DashIosProvider? providerr;
  DashIosProvider? providerw;

  List<Widget> screen = [
     HomeAndroidScreen(),
     ChatAndroidScreen(),
     CallAndroidScreen(),
     SettingAndriodScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    providerr = context.read<DashIosProvider>();
    providerw = context.watch<DashIosProvider>();
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Plateform Converter"),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.person_add_alt),
              ),
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Call",
              ),
              Tab(
                text: "Setting",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: screen,
        ),
      ),
    );
  }
}