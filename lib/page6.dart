import 'package:flutter/material.dart';
import 'package:task_app_ui/button_style.dart';
import 'package:task_app_ui/color_style.dart';
import 'package:task_app_ui/page7.dart';

class Page6 extends StatefulWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Text(
            "X",
            style: TextStyle(fontSize: 16, letterSpacing: 2),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Text("Sign Up"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Your Email Address",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  prefix: Icon(
                    Icons.email,
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
              height: 19,
            ),
            RoundButton(
              title: "Continue",
              ontap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page7()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
