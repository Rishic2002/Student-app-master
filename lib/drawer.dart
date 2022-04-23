import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'drawer/classes.dart';
import 'drawer/classReports.dart';
import 'drawer/attendanceReports.dart';
import 'drawer/backupRestore.dart';
import 'drawer/timetable.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://3.bp.blogspot.com/-LY0pQ6kEtm8/XmHx3p6ht7I/AAAAAAAAMaI/NQZdZInooPgoDpHde_u1c3Kf83Oo5PlZwCK4BGAYYCw/s113/IMG_20190927_131410.jpg";
    return Drawer(
      child: Container(
        color: Colors.yellow,
        child: ListView(
          children: [
            // DrawerHeader(
            //   padding: EdgeInsets.zero,
            //   child: UserAccountsDrawerHeader(
            //     accountName: Text("Pankaj"),
            //     accountEmail: Text("pankajsoni.ps8327@gmail.com"),
            //     currentAccountPicture:
            //         CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
            //   ),
            // ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("/home");
              },
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.purple,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("/classes");
              },
              leading: Icon(
                CupertinoIcons.device_laptop,
                color: Colors.purple,
              ),
              title: Text(
                "Classes",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("/timetable");
              },
              leading: Icon(
                CupertinoIcons.calendar,
                color: Colors.purple,
              ),
              title: Text(
                "Time Table",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("/attendanceReports");
              },
              leading: Icon(
                CupertinoIcons.list_bullet_below_rectangle,
                color: Colors.purple,
              ),
              title: Text(
                "Attendance Reports",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("/classReports");
              },
              leading: Icon(
                CupertinoIcons.link_circle,
                color: Colors.purple,
              ),
              title: Text(
                "Class Reports",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("/backupRestore");
              },
              leading: Icon(
                CupertinoIcons.book_circle_fill,
                color: Colors.purple,
              ),
              title: Text(
                "Backup / Restore",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            // SizedBox(
            //   height: 300.0,
            // ),
            Spacer(),
            Divider(
              color: Colors.yellow.shade600,
              thickness: 4,
            ),

            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("/signup");
              },
              leading: Icon(
                CupertinoIcons.fullscreen_exit,
                color: Colors.purple,
              ),
              title: Text(
                "Log Out",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
