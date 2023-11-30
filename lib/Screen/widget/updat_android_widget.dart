import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:platform_converter/Screen/Home/modal/Home_modal.dart';
import 'package:platform_converter/Screen/Home/provider/home_provider.dart';
import 'package:provider/provider.dart';

void showWidget(BuildContext context, HomeModal ec) {
  TextEditingController txtName = TextEditingController(text: ec.name);
  TextEditingController txtChat = TextEditingController(text: ec.chat);

  showDialog(
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: AlertDialog(
          title: const Text("Update Contacts"),
          actions: [
            Align(
              alignment: Alignment.center,
              child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          alignment: Alignment.bottomCenter,
                          title: const Text("Pick Profile Picture"),
                          actions: [
                            TextButton(
                                onPressed: () async {
                                  ImagePicker picker = ImagePicker();
                                  XFile? image = await picker.pickImage(
                                      source: ImageSource.gallery);
                                  context.read<HomeProvider>().updateImagePath(image!.path);
                                },
                                child: const Text("Choose Photo")),
                            TextButton(
                                onPressed: () async {
                                  ImagePicker picker = ImagePicker();
                                  XFile? image = await picker.pickImage(
                                      source: ImageSource.camera);
                                  context.read<HomeProvider>().updateImagePath(image!.path);
                                },
                                child: const Text("Take Photo")),
                          ],
                        );
                      },
                    );
                  },
                  child: ec.image != null ||
                      context.read<HomeProvider>().path != null
                      ? CircleAvatar(
                    radius: 70,
                    backgroundImage: FileImage(File("${ec.image}")),
                  )
                      : CircleAvatar(
                    radius: 80,
                    child: Text(
                      "${ec.name!.substring(0, 1).toUpperCase()}",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: txtName,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), label: Text("Name")),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: txtChat,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), label: Text("Chat")),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                HomeModal ec = HomeModal();
                ec.name = txtName.text;
                ec.chat = txtChat.text;
                ec.image = context.read<HomeProvider>().path;
                context.read<HomeProvider>().editContact(ec);
                Navigator.pop(context);
              },
              child: const Text("Update"),
            )
          ],
        ),
      );
    },
  );
}