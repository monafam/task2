import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class Task2 extends StatefulWidget {
  @override
  _Task2State createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream:  FirebaseFirestore.instance.collection('users/i4TWrqHv7urZvBqD6iKu/prodict').snapshots(),
        builder: (ctx,snapShot){
          final _docs=snapShot.data.docs;
          return ListView.builder(
          itemCount: 5,
            itemBuilder: (ctx,index)=>Container(
              padding: EdgeInsets.all(8),
              child: Text(''),
            ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add) ,
        onPressed: (){
          FirebaseFirestore.instance.collection('users/i4TWrqHv7urZvBqD6iKu/prodict').snapshots().listen((event) {
            print(event.docs[0]['id']);
            print(event.docs[1]['titel']);
          });
        },
      ),
    );
  }
}
