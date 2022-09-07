import 'package:flutter/material.dart';
import 'package:task_app_ui/color_style.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            )
          ],
          backgroundColor: bgColor,
          leading: Icon(Icons.arrow_back_ios),
          title: Text(
            "Projects",
            style: TextStyle(color: shadaColor),
          )),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "16",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "All",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 75, 75, 75),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "5",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Under Reveiw",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 75, 75, 75),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "12",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Ongoing Reveiw",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              width: 80,
              color: Colors.blue,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Column(
                children: [
                  ctc(),
                  SizedBox(
                    height: 12,
                  ),
                  ctc(),
                  SizedBox(
                    height: 12,
                  ),
                  ctc(),
                  SizedBox(
                    height: 12,
                  ),
                  ctc(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container ctc() {
    return Container(
      height: 160,
      width: 450,
      color: Color.fromARGB(255, 55, 53, 53),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  "Web Design",
                  style: TextStyle(color: shadaColor, fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 190),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "2 Days Left",
                    style: TextStyle(color: shadaColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Icon(
                    Icons.more_vert,
                    color: shadaColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Pt. Ikatan Cinta",
              style: TextStyle(color: shadaColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22, top: 15),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 5,
                      width: 350,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 5,
                      width: 150,
                      color: Colors.purple,
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "35%",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 19, right: 0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Text(
                    "12 Tasks",
                    style: TextStyle(color: shadaColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
