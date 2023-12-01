import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:platform_converter/Screen/Home/modal/Home_modal.dart';
import 'package:platform_converter/Screen/Home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeIosScreen extends StatefulWidget {
  const HomeIosScreen({Key? key}) : super(key: key);

  @override
  State<HomeIosScreen> createState() => _HomeIosScreenState();
}

class _HomeIosScreenState extends State<HomeIosScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;
  TextEditingController txtName = TextEditingController();
  TextEditingController txtChat = TextEditingController();
  TextEditingController txtCall = TextEditingController();
  TextEditingController txtdate = TextEditingController();
  TextEditingController txttime = TextEditingController();


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
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<HomeProvider>(builder: (context, value, child) {
                return CircleAvatar(
                  radius: 60,
                  backgroundImage: value.path != null
                      ? FileImage(
                    File(value.path!),
                  )
                      : null,
                  child: GestureDetector(
                    onTap: () async {
                      ImagePicker imagePicker = ImagePicker();
                      XFile? image = await imagePicker.pickImage(
                        source: ImageSource.gallery,
                      );
                      providerr!.updateImagePath(image!.path);
                    },
                    child: const Icon(CupertinoIcons.camera),
                  ),
                );
              },
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(CupertinoIcons.person),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 300,
                        child: CupertinoTextField(
                          keyboardType: TextInputType.name,
                          controller: txtName,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(CupertinoIcons.phone),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 300,
                        child: CupertinoTextField(
                          keyboardType: TextInputType.phone,
                          controller: txtCall,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(CupertinoIcons.text_bubble),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 300,
                        child: CupertinoTextField(
                          keyboardType: TextInputType.emailAddress,
                          controller: txtChat,
                          cursorColor: CupertinoColors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                          onTap: () {
                            showCupertinoModalPopup(
                              context: context,
                              builder: (context) =>
                                  SizedBox(
                                    height: 200,
                                    child: CupertinoDatePicker(
                                      initialDateTime: providerr!.date,
                                      backgroundColor: Colors.white,
                                      onDateTimeChanged: (value) {
                                        providerr!.changeDate(value);
                                      },
                                    ),
                                  ),
                            );
                          },
                          child: const Icon(CupertinoIcons.calendar)),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Date : ${providerw!.date!.day}/${providerw!.date!
                            .month}/${providerw!.date!.year}",
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                          onTap: () {
                            showCupertinoModalPopup(
                              context: context,
                              builder: (context) {
                                return SizedBox(
                                  height: 200,
                                  child: CupertinoTimerPicker(
                                    mode: CupertinoTimerPickerMode.hm,
                                    backgroundColor: CupertinoColors.white,
                                    onTimerDurationChanged: (value) {
                                      List<String>l1 = value.toString().split(
                                          ':');
                                      TimeOfDay? t1 = TimeOfDay(
                                          hour: int.parse(l1[0]),
                                          minute: int.parse(l1[1]));
                                      providerr!.changeTime(t1);
                                    },
                                    initialTimerDuration: Duration(
                                        hours: providerr!.time!.hour,
                                        minutes: providerr!.time!.minute),
                                  ),
                                );
                              },
                            );
                          },
                          child: const Icon(CupertinoIcons.time)),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Time : ${providerr!.time!.hour}:${providerr!.time!
                            .minute}",
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CupertinoButton.filled(
                      child: const Text("Save"),
                      onPressed: () {
                        HomeModal cm = HomeModal(
                          name: txtName.text,
                          call: txtCall.text,
                          chat: txtChat.text,
                          time: txttime.text,
                          date: txtdate.text,
                          image: providerw!.path,
                        );
                        providerr!.updateImagePath(null);
                        providerr!.addPlatfomeData(cm);
                        providerw!.dashIndex;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
