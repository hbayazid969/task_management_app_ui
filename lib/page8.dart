import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app_ui/button_style.dart';
import 'package:task_app_ui/color_style.dart';
import 'package:task_app_ui/page9.dart';

class Page8 extends StatefulWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
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
            SizedBox(
              height: 7,
            ),
            RoundButton(
              title: "Create your Own Team",
              ontap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page9()));
              },
            ),
            SizedBox(
              height: 18,
            ),
            Center(
                child: Text(
              "Or",
              style: TextStyle(color: Colors.white),
            )),
            SizedBox(
              height: 18,
            ),
            RoundButton(
              title: "Join Team",
              ontap: () {},
              isColor: true,
            ),
          ],
        ),
      ),
    );
  }
}
