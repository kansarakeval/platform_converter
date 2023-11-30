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
    return  CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "Platform Converter ",
          style: TextStyle(fontSize: 20,),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                child: Icon(CupertinoIcons.camera),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(CupertinoIcons.calendar),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Pick Date",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment:Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(CupertinoIcons.time),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Pick Date",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CupertinoButton.filled(
                      child: Text(
                        "Save",
                      ),
                      onPressed: () {

                      },),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
