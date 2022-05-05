// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../drawer.dart';

class TimeTablePage extends StatefulWidget {
  const TimeTablePage({Key? key}) : super(key: key);

  @override
  State<TimeTablePage> createState() => _ClassesState();
}

class _ClassesState extends State<TimeTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('TIMETABLE', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.yellow),
      drawer: MyDrawer(),
    );
  }
}
