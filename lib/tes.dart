import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference users = firestore.collection("users");

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
late String name;

Future<Null> getName() async {
  DocumentSnapshot document = await FirebaseFirestore.instance.collection('users').get();
name = document.data['name']
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
        
        ],
      )),
    );
  }
}

