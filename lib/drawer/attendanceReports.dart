// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../drawer.dart';

class AttendanceReportsPage extends StatefulWidget {
  const AttendanceReportsPage({Key? key}) : super(key: key);

  @override
  State<AttendanceReportsPage> createState() => _ClassesState();
}

class _ClassesState extends State<AttendanceReportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('ATTENDANCE REPORTS',
              style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.yellow),
      drawer: MyDrawer(),
    );
  }
}
