import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_app_ui/button_style.dart';
import 'package:task_app_ui/color_style.dart';
import 'package:task_app_ui/page8.dart';

class Page7 extends StatefulWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  State<Page7> createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: SvgPicture.asset("asset/slider2.svg"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Stack(
                          children: [
                            Container(
                              height: 4,
                              width: 30,
                              color: Colors.grey,
                            ),
                            Container(
                              height: 4,
                              width: 30,
                              color: Colors.blue,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 4,
                        width: 30,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 4,
                        width: 30,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 4,
                        width: 30,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 4,
                        width: 30,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "Complete your profile",
              style: myStyle(16, aTextColor),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                chooseImage();
              },
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: aGreyColor)),
                child: Container(
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: aGreyColor,
                    shape: BoxShape.circle,
                  ),
                  child: _image == null
                      ? IconButton(
                          onPressed: () {}, icon: Icon(Icons.add_a_photo))
                      : CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: FileImage(_image!),
                        ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Your Full Name",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Name',
                        prefix: Icon(
                          Icons.email,
                          size: 15,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Your Password",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        prefix: Icon(
                          Icons.key,
                          size: 15,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  RoundButton(
                    title: "Continue",
                    ontap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page8()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  File? _image;

  ImagePicker _picker = ImagePicker();

  chooseImage() {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("Choose Image from"),
            children: [
              SimpleDialogOption(
                child: Text("Choose from Gallery"),
                onPressed: () {
                  chooseImageFromGallery();
                },
              ),
              SimpleDialogOption(
                child: Text("Choose from Camera"),
                onPressed: () {
                  chooseImageFromCamera();
                },
              ),
              SimpleDialogOption(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  chooseImageFromGallery() async {
    var pickImage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickImage!.path);
    });
    Navigator.of(context).pop();
  }

  chooseImageFromCamera() async {
    var pickImage = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(pickImage!.path);
    });
    Navigator.of(context).pop();
  }
}
