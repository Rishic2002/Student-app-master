import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';

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
            SizedBox(
              height: 420.0,
            ),
            ListTile(
              onTap: () => HomePage,
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
