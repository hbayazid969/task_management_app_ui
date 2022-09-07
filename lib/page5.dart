import 'package:flutter/material.dart';
import 'package:task_app_ui/button_style.dart';
import 'package:task_app_ui/color_style.dart';
import 'package:task_app_ui/page6.dart';

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
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
            child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page6()));
                },
                child: Text("Sign Up")),
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
              title: "Log in",
              ontap: () {},
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Forget your password",
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
