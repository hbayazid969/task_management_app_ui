import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app_ui/button_style.dart';
import 'package:task_app_ui/color_style.dart';
import 'package:task_app_ui/page3.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool _pc1hasBeenPressed = false;
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
                Text(
                  "Update Progress Your Work for The Team",
                  style: myStyle(36, aTextColor, FontWeight.w700),
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
                        InkWell(
                          onTap: () {
                            setState(() {
                              _pc1hasBeenPressed = !_pc1hasBeenPressed;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Page3()));
                            });
                          },
                          child: Container(
                            height: 2,
                            width: 50,
                            color: Colors.grey,
                          ),
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
                          color: Colors.grey,
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
                  ontap: () {},
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
