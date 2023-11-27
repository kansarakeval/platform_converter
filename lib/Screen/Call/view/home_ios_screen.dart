import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeIosScreen extends StatefulWidget {
  const HomeIosScreen({Key? key}) : super(key: key);

  @override
  State<HomeIosScreen> createState() => _HomeIosScreenState();
}

class _HomeIosScreenState extends State<HomeIosScreen> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "Platform Converter ",
          style: TextStyle(fontSize: 20, color: CupertinoColors.black),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 60,
                  child: Icon(CupertinoIcons.camera),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(CupertinoIcons.person),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 300,
                  child: CupertinoTextField(
                    cursorColor: CupertinoColors.black,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(CupertinoIcons.phone),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 300,
                  child: CupertinoTextField(
                    cursorColor: CupertinoColors.black,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(CupertinoIcons.text_bubble),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 300,
                  child: CupertinoTextField(
                    cursorColor: CupertinoColors.black,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(CupertinoIcons.calendar),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Pick Date",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 15,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(CupertinoIcons.time),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Pick Date",
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 15,
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.center,
              child: CupertinoButton.filled(
                  child: Text(
                    "Save",
                    style: (TextStyle(color: CupertinoColors.black)),
                  ),
                  onPressed: null),
            ),
          ],
        ),
      ),
    );
  }
}
