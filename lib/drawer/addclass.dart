// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_app/drawer/timetable.dart';
import '../drawer.dart';

final TextEditingController _newclassController = TextEditingController();
final TextEditingController _classteachernameController =
    TextEditingController();
final TextEditingController _startdateController = TextEditingController();
final TextEditingController _enddateController = TextEditingController();

addData() {
  Map<String, dynamic> data = {
    "classteachername": _classteachernameController.text,
    "newclass": _newclassController.text,
    "startdate_number": _startdateController.text,
    "enddate": _enddateController.text
  };
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('student');
  collectionReference.add(data);
}

updateData() async {
  Map<String, dynamic> data = {
    "classteachername": _classteachernameController.text,
    "newclass": _newclassController.text,
    "startdate_number": _startdateController.text,
    "enddate": _enddateController.text
  };
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('student');
  QuerySnapshot querySnapshot = await collectionReference.get();
  querySnapshot.docs[0].reference.update(data);
}

deleteData() async {
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('student');
  QuerySnapshot querySnapshot = await collectionReference.get();
  querySnapshot.docs[0].reference.delete();
}

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
      body: Center(
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 0),
              child: Flexible(
                child: TextField(
                    controller: _classteachernameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'CLASS TEACHER NAME',
                    )),
              )),
          Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 0),
              child: Flexible(
                child: TextField(
                  controller: _newclassController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'New Class Name',
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 0),
              child: Flexible(
                child: TextField(
                    controller: _startdateController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'START DATE',
                      hintText: 'Enter in DD/MM/YYYY format',
                    )),
              )),
          Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 0),
              child: Flexible(
                child: TextField(
                    controller: _enddateController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'END DATE',
                      hintText: 'Enter in DD/MM/YYYY format',
                    )),
              )),
          const SizedBox(
            height: 15,
          ),
          Column(children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 0), //button
              width: 150,
              child: MaterialButton(
                  elevation: 5.0,
                  onPressed: () {
                    setState(() {
                      addData();
                    });
                  },
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 0, bottom: 0), //text
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.yellow,
                  child: const Expanded(
                    child: Text(
                      'ADD',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                      ),
                    ),
                  )),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 0),
              width: 150,
              child: MaterialButton(
                  elevation: 5.0,
                  onPressed: () {
                    setState(() {
                      updateData();
                    });
                  },
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 0, bottom: 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.yellow,
                  child: const Flexible(
                    child: Text(
                      'UPDATE',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                      ),
                    ),
                  )),
            ),
          ]),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 20, bottom: 0),
                width: 150,
                child: MaterialButton(
                    elevation: 5.0,
                    onPressed: () {
                      setState(() {
                        deleteData();
                      });
                    },
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 0, bottom: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.yellow,
                    child: const Flexible(
                      child: Text(
                        'DELETE',
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.5,
                          fontSize: 18.0,
                        ),
                      ),
                    )),
              ),
            ],
          )
        ])),
      ),
      drawer: MyDrawer(),
    );
  }
}
