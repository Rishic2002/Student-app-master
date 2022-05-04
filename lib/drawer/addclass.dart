// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_app/drawer/timetable.dart';
import '../drawer.dart';

class AddClassesPage extends StatefulWidget {
  const AddClassesPage({Key? key}) : super(key: key);

  @override
  State<AddClassesPage> createState() => _ClassesState();
}

class _ClassesState extends State<AddClassesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('ADD CLASS', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.yellow),
      drawer: MyDrawer(),
    );
  }
}
