// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../drawer.dart';

class ClassReportsPage extends StatefulWidget {
  const ClassReportsPage({Key? key}) : super(key: key);

  @override
  State<ClassReportsPage> createState() => _ClassesState();
}

class _ClassesState extends State<ClassReportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('CLASS REPORTS',
              style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.yellow),
      drawer: MyDrawer(),
    );
  }
}
