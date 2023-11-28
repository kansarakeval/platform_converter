import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsIosScreen extends StatefulWidget {
  const ChatsIosScreen({Key? key}) : super(key: key);

  @override
  State<ChatsIosScreen> createState() => _ChatsIosScreenState();
}

class _ChatsIosScreenState extends State<ChatsIosScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "Platform Converter ",
          style: TextStyle(fontSize: 20, color: CupertinoColors.black),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 30,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Subtitle",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text("Date, time", style: TextStyle(color: CupertinoColors.black, fontSize: 16)),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 30,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Subtitle",
                          style: TextStyle(
                            color: CupertinoColors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text("Date, time", style: TextStyle(color: CupertinoColors.black, fontSize: 16)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
