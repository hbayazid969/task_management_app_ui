import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app_ui/button_style.dart';
import 'package:task_app_ui/color_style.dart';
import 'package:task_app_ui/page11.dart';

class Page10 extends StatefulWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  State<Page10> createState() => _Page10State();
}

class _Page10State extends State<Page10> {
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
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
                        color: Colors.blue,
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
                        color: Colors.blue,
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
                        color: Colors.blue,
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
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Center(
                child: Text(
              "Enter your code team",
              style: TextStyle(color: Colors.white),
            )),
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Code Team",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'e.g. DFRTFS',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefix: Icon(
                    Icons.person,
                    size: 15,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(
              height: 117,
            ),
            RoundButton(
              title: "Continue",
              ontap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page11()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
