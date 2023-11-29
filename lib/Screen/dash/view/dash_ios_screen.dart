import 'package:flutter/cupertino.dart';
import 'package:platform_converter/Screen/Call/view/call_ios_screen.dart';
import 'package:platform_converter/Screen/Chats/view/chats_ios_screen.dart';
import 'package:platform_converter/Screen/Home/view/home_ios_screen.dart';
import 'package:platform_converter/Screen/dash/provider/dash_ios_provider.dart';

class DashIosScreen extends StatefulWidget {
  const DashIosScreen({super.key});

  @override
  State<DashIosScreen> createState() => _DashIosScreenState();
}

class _DashIosScreenState extends State<DashIosScreen> {
  DashIosProvider? providerw;
  DashIosProvider? providerr;

  List<Widget> screens = [
    HomeIosScreen(),
    ChatsIosScreen(),
    CallIosScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              IndexedStack(
                index: providerw!.stepIndex,
                children: screens,
              ),
              CupertinoTabBar(
                currentIndex: providerr!.stepIndex,
                onTap: (value) {
                  int i = value;
                  providerr!.changeStep(i);
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person_add),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.chat_bubble_text),
                    label: 'Contact',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.phone),
                    label: 'Contact',
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
