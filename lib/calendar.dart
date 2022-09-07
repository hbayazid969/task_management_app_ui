import 'package:flutter/material.dart';
import 'package:task_app_ui/button_style.dart';
import 'package:task_app_ui/color_style.dart';
import 'package:task_app_ui/model.dart';

class Calendars extends StatefulWidget {
  const Calendars({Key? key}) : super(key: key);

  @override
  State<Calendars> createState() => _CalendarsState();
}

class _CalendarsState extends State<Calendars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Parto Team",
          style: myStyle(16, shadaColor),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: GridView.builder(
            itemCount: taskList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.8,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 16),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage("${taskList[index].img}"),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.teal,
                                  radius: 4,
                                ))
                          ],
                        ),
                        Icon(
                          Icons.more_vert,
                          size: 20,
                          color: shadaColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "${taskList[index].taskName}",
                      style: myStyle(16, shadaColor, FontWeight.w700),
                    ),
                    Text(
                      "${taskList[index].email}",
                      style: myStyle(14, ashColor),
                    ),
                  ],
                ),
              );
            }),
      ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 420),
                              child: Text(
                                'X',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Card(
                          elevation: 5,
                          child: Container(
                            height: 160,
                            width: 500,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Add New Member",
                          style: TextStyle(color: shadaColor),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Card(
                          child: Container(
                            height: 50,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 74, 73, 73),
                              borderRadius: BorderRadius.circular(12),
                            ),
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
                        Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Add Member",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        RoundButton(
                          title: "Invite",
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
    );
  }
}
