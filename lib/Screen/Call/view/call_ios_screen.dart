import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter/Screen/Home/provider/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class CallIosScreen extends StatefulWidget {
  const CallIosScreen({super.key});

  @override
  State<CallIosScreen> createState() => _CallIosScreenState();
}

class _CallIosScreenState extends State<CallIosScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;
  TextEditingController txtName = TextEditingController();
  TextEditingController txtCall = TextEditingController();

  @override
  Widget build(BuildContext context) {
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text(
            "Platform Converter ",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        child: ListView.builder(
          itemCount: providerw!.addDataList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        providerw!.addDataList[index].image != null
                            ? CircleAvatar(
                                radius: 25,
                                backgroundImage: FileImage(File(
                                  "${providerw!.addDataList[index].image}",
                                )),
                              )
                            : Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
                                width: MediaQuery.of(context).size.width * 0.20,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: CupertinoColors.systemTeal),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${providerw!.addDataList[index].name!.isNotEmpty ? providerw!.addDataList[index].name!.substring(0, 1).toUpperCase() : 0}",
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${providerw!.addDataList[index].name}",
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${providerw!.addDataList[index].call}",
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                            onTap: () async {
                              Uri uri = Uri.parse(
                                  "tel: +91${providerr!.addDataList[index].call}");
                              await launchUrl(uri);
                            },
                            child: const Icon(CupertinoIcons.phone))
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
