import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter/Screen/Setting/provider/setting_provider.dart';
import 'package:platform_converter/util/Theme/provider/theme_provider.dart';
import 'package:platform_converter/util/share_helper.dart';
import 'package:provider/provider.dart';

class SettingIosScreen extends StatefulWidget {
  const SettingIosScreen({super.key});

  @override
  State<SettingIosScreen> createState() => _SettingIosScreenState();
}

SettingProvider? providerR;
SettingProvider? providerW;

class _SettingIosScreenState extends State<SettingIosScreen> {
  @override
  Widget build(BuildContext context) {
    providerR = context.read<SettingProvider>();
    providerW = context.watch<SettingProvider>();
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "Platform Converter ",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(CupertinoIcons.person),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Update Profile Data",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                CupertinoSwitch(
                  value: providerR!.isVisible,
                  onChanged: (value) {
                    providerR!.showDialog(value);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            (providerR!.isVisible == true)
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: CupertinoColors.activeBlue,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(CupertinoIcons.camera),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CupertinoTextField.borderless(
                          textAlign: TextAlign.center,
                          placeholder: "Enter your name..",
                        ),
                        CupertinoTextField.borderless(
                          textAlign: TextAlign.center,
                          placeholder: "Enter your bio..",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CupertinoButton(
                                child: Text(
                                  "SAVE",
                                  style: TextStyle(
                                      color: CupertinoColors.activeBlue),
                                ),
                                onPressed: () {}),
                            CupertinoButton(
                                child: Text(
                                  "CLEAR",
                                  style: TextStyle(
                                      color: CupertinoColors.activeBlue),
                                ),
                                onPressed: () {}),
                          ],
                        )
                      ],
                    ),
                  )
                : Container(
                    height: 10,
                  ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(CupertinoIcons.sun_max),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Theme",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "change Theme",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Consumer<ThemeProvider>(
                  builder: (context, value, child) => CupertinoSwitch(
                    value: value.isLight,
                    onChanged: (value1) {
                      ShareHelper shr = ShareHelper();
                      shr.setTheme(value1);
                      value.changeThem();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
