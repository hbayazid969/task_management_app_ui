import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app_ui/button_style.dart';
import 'package:task_app_ui/color_style.dart';
import 'package:task_app_ui/page5.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Positioned(
            top: -230,
            child: Transform.rotate(
              angle: pi / 5,
              child: Container(
                width: 480,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: aTextColorDark,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Get Notified when\n you Get a New\n Assignment",
                    style: myStyle(30, aTextColor, FontWeight.w700),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Stack(
                            children: [
                              Container(
                                height: 2,
                                width: 50,
                                color: Colors.grey,
                              ),
                              Container(
                                height: 2,
                                width: 50,
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
                          height: 2,
                          width: 50,
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
                          height: 2,
                          width: 50,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
                RoundButton(
                  title: "Sign Up",
                  ontap: () {},
                ),
                SizedBox(
                  height: 16,
                ),
                RoundButton(
                  title: "Log in",
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page5()));
                  },
                  isColor: true,
                ),
                SizedBox(
                  height: 16,
                ),
                SvgPicture.asset("asset/indicator.svg"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
