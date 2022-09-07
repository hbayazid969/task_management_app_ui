import 'package:flutter/material.dart';
import 'package:task_app_ui/color_style.dart';

class Cdar extends StatefulWidget {
  const Cdar({Key? key}) : super(key: key);

  @override
  State<Cdar> createState() => _CdarState();
}

class _CdarState extends State<Cdar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          )
        ],
        backgroundColor: bgColor,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundColor: aTextColorDark,
          ),
        ),
        title: Row(
          children: [
            Text(
              "Parto Team",
              style: myStyle(12, aTextColor),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              title: Text(
                "March,04",
                style: TextStyle(color: shadaColor),
              ),
              trailing: Text(
                "5 Task Today",
                style: TextStyle(color: shadaColor),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "04",
                          style: TextStyle(color: shadaColor, fontSize: 25),
                        ),
                        Text(
                          "Thu",
                          style: TextStyle(color: shadaColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Color.fromARGB(255, 70, 69, 69),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "05",
                          style: TextStyle(color: shadaColor, fontSize: 25),
                        ),
                        Text(
                          "Fri",
                          style: TextStyle(color: shadaColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Color.fromARGB(255, 70, 69, 69),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "07",
                          style: TextStyle(color: shadaColor, fontSize: 25),
                        ),
                        Text(
                          "Sat",
                          style: TextStyle(color: shadaColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Color.fromARGB(255, 70, 69, 69),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "08",
                          style: TextStyle(color: shadaColor, fontSize: 25),
                        ),
                        Text(
                          "Sun",
                          style: TextStyle(color: shadaColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Color.fromARGB(255, 70, 69, 69),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "09",
                          style: TextStyle(color: shadaColor, fontSize: 25),
                        ),
                        Text(
                          "Mon",
                          style: TextStyle(color: shadaColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      ccc(),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: ccc(),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: ccc(),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      ccc(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Container ccc() {
    return Container(
      height: 120,
      width: 430,
      color: Color.fromARGB(255, 70, 69, 69),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Row(
              children: [
                Text(
                  "Meeting Discord",
                  style: TextStyle(color: shadaColor),
                ),
                SizedBox(
                  width: 250,
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 6,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 6,
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Discuss with Design Projects",
                  style: TextStyle(color: shadaColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "10AM to 10.30AM",
              style: TextStyle(color: shadaColor),
            ),
          ),
        ],
      ),
    );
  }
}
