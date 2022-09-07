import 'package:flutter/material.dart';
import 'package:task_app_ui/color_style.dart';

class Profiles extends StatefulWidget {
  const Profiles({Key? key}) : super(key: key);

  @override
  State<Profiles> createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Sign out",
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
            )
          ],
          backgroundColor: bgColor,
          title: Text(
            "My Profile",
            style: TextStyle(color: shadaColor),
          )),
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey,
              ),
              title: Text(
                "Shoo phar Nid",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Graphics Design Team",
                style: TextStyle(color: shadaColor),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: shadaColor,
              ),
              title: Text(
                "Help",
                style: TextStyle(color: shadaColor),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: shadaColor,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.privacy_tip,
                color: shadaColor,
              ),
              title: Text(
                "Privacy",
                style: TextStyle(color: shadaColor),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: shadaColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
