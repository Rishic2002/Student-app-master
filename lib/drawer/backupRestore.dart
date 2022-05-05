// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../drawer.dart';

class BackupRestorePage extends StatefulWidget {
  const BackupRestorePage({Key? key}) : super(key: key);

  @override
  State<BackupRestorePage> createState() => _ClassesState();
}

class _ClassesState extends State<BackupRestorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('BACKUP / RESTORE', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.yellow),
      drawer: MyDrawer(),
    );
  }
}
