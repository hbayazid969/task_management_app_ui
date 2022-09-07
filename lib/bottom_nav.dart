import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app_ui/button_style.dart';
import 'package:task_app_ui/calendar.dart';
import 'package:task_app_ui/cdar.dart';
import 'package:task_app_ui/color_style.dart';
import 'package:task_app_ui/home.dart';
import 'package:task_app_ui/profile.dart';
import 'package:task_app_ui/project.dart';

class Page12 extends StatefulWidget {
  const Page12({Key? key}) : super(key: key);

  @override
  State<Page12> createState() => _Page12State();
}

class _Page12State extends State<Page12> {
  int currentIndex = 0;
  List<Widget> pages = [Homes(), Cdar(), Projects(), Projects(), Profiles()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                color: bgColor,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Add New Project',
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 320),
                              child: Text(
                                'X',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        txtb(),
                        SizedBox(
                          height: 12,
                        ),
                        Card(
                          child: Container(
                            height: 50,
                            width: 500,
                            color: Color.fromARGB(255, 74, 73, 73),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Select your team",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Card(
                          child: Container(
                            height: 50,
                            width: 500,
                            color: Color.fromARGB(255, 74, 73, 73),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Ongoing",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Card(
                          child: Container(
                            height: 50,
                            width: 500,
                            color: Color.fromARGB(255, 74, 73, 73),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Icon(
                                    Icons.calendar_month,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "2 March 2021",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.attach_file,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Attacthed File",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        RoundButton(
                          title: "Save",
                          ontap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),

      // Here's the new attribute:

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("asset/layout.svg"),
              label: "My Task",
              backgroundColor: secondaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: "Calender",
              backgroundColor: secondaryColor),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              color: Colors.transparent,
            ),
            label: "My Task",
            backgroundColor: secondaryColor,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: "Project",
              backgroundColor: secondaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "My Profile",
              backgroundColor: secondaryColor),
        ],
      ),
    );
  }

  Column txtb() {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Project Name",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: 'Enter Project Name',
              prefix: Icon(
                Icons.work,
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
      ],
    );
  }
}
