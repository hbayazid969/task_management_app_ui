import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app_ui/color_style.dart';
import 'package:task_app_ui/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 96,
              width: 96,
              color: secondaryColor,
              margin: EdgeInsets.only(bottom: 32),
              padding: EdgeInsets.all(30),
              child: SvgPicture.asset("asset/Layouts.svg"),
            ),
            Text(
              "RANCING",
              style: myStyle(36, aTextColor, FontWeight.w700),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Your Personal Task Manager",
              style: myStyle(
                17,
                wwhite,
                FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 200,
            ),
            MaterialButton(
              padding: EdgeInsets.symmetric(
                vertical: 19,
                horizontal: 16,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page2()));
              },
              color: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Getting Started",
                    style: myStyle(17, aTextColor, FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SvgPicture.asset("asset/indicator.svg"),
          ],
        ),
      ),
    );
  }
}
