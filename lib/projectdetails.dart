import 'package:flutter/material.dart';
import 'package:task_app_ui/button_style.dart';
import 'package:task_app_ui/color_style.dart';

class Pdetails extends StatefulWidget {
  const Pdetails({Key? key}) : super(key: key);

  @override
  State<Pdetails> createState() => _PdetailsState();
}

class _PdetailsState extends State<Pdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
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
                              'Add Tags',
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 370),
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
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Tag Name",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Enter tag name',
                              prefix: Icon(
                                Icons.key,
                                size: 15,
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.grey),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.grey),
                                borderRadius: BorderRadius.circular(15),
                              )),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Color",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        cb(),
                        SizedBox(
                          height: 12,
                        ),
                        cb(),
                        SizedBox(
                          height: 12,
                        ),
                        cb(),
                        SizedBox(
                          height: 12,
                        ),
                        RoundButton(
                          title: "Add",
                          ontap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }),
        child: Icon(Icons.add),
      ),
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
            "Project Details",
            style: TextStyle(color: shadaColor),
          )),
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Web Design - PT Mencari\n Cinta Sejati",
                style: TextStyle(color: shadaColor, fontSize: 30),
              ),
              Row(
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10, top: 14),
                child: Text(
                  "Goals",
                  style: TextStyle(color: shadaColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 14),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an \nunknown printer took a galley of type and scrambled",
                  style: TextStyle(color: shadaColor, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: shadaColor,
                    ),
                    Text(
                      "March 13, 17.00PM",
                      style: TextStyle(color: shadaColor),
                    ),
                    SizedBox(
                      width: 19,
                    ),
                    Icon(
                      Icons.calendar_month,
                      color: shadaColor,
                    ),
                    Text(
                      "March 13, 17.00PM",
                      style: TextStyle(color: shadaColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, top: 20),
                child: Row(
                  children: [
                    Text(
                      "Tasks(5/12)",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 10,
                          width: 250,
                          color: Colors.grey,
                        ),
                        Container(
                          height: 10,
                          width: 90,
                          color: Colors.purple,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.check_box,
                  color: shadaColor,
                ),
                title: Text(
                  "Research Analysys",
                  style: TextStyle(color: shadaColor),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.check_box,
                  color: shadaColor,
                ),
                title: Text(
                  "Design Systems",
                  style: TextStyle(color: shadaColor),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.check_box,
                  color: shadaColor,
                ),
                title: Text(
                  "wireframe",
                  style: TextStyle(color: shadaColor),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.check_box,
                  color: shadaColor,
                ),
                title: Text(
                  "Mockup",
                  style: TextStyle(color: shadaColor),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.check_box,
                  color: shadaColor,
                ),
                title: Text(
                  "Prototype",
                  style: TextStyle(color: shadaColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row cb() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.amber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}
