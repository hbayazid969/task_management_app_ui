import 'package:flutter/material.dart';
import 'package:task_app_ui/calendar.dart';
import 'package:task_app_ui/color_style.dart';

class Homes extends StatefulWidget {
  const Homes({Key? key}) : super(key: key);

  @override
  State<Homes> createState() => _HomesState();
}

class _HomesState extends State<Homes> {
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
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Project Task",
                style: myStyle(16, aTextColor, FontWeight.w700),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 70,
                  child: Row(
                    children: [
                      Conr(),
                      SizedBox(
                        width: 15,
                      ),
                      Conr(),
                      SizedBox(
                        width: 15,
                      ),
                      Conr(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ListTile(
                leading: Text(
                  "My Task",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Text(
                  "See More",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Calendars()));
                    },
                    child: lc()),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
                child: lc(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
                child: lc(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
                child: lc(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Card lc() {
    return Card(
      color: secondaryColor,
      elevation: 12,
      child: ListTile(
        leading: Icon(
          Icons.mark_chat_read,
          color: Colors.white,
        ),
        title: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Research Analysis",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 5,
                      width: 250,
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
                  "5/20",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    ".",
                    style: TextStyle(color: Colors.green, fontSize: 50),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    "2 Days left",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
        trailing: Container(
          height: 20,
          width: 60,
          color: Color.fromARGB(255, 233, 224, 196),
          child: Center(
            child: Text(
              "Urgent",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  Container Conr() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: secondaryColor,
      ),
      height: 57,
      width: 130,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 13),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.purple),
              )),
          Expanded(
              flex: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "5",
                    style: myStyle(16, aTextColor, FontWeight.w700),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Ongoing",
                    style: myStyle(14, aTextColor, FontWeight.w400),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
