import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

class DispaylistInstructions extends StatefulWidget {

  final String title;

  const DispaylistInstructions({super.key, required this.title});

  @override
  State<DispaylistInstructions> createState() => _MyMyListPage();
}

class _MyMyListPage extends State<DispaylistInstructions> {
  int _counter = 0;

  getData() {
    final databaseReference = FirebaseDatabase.instance.ref(widget.title);
    return FirebaseAnimatedList(
      query: databaseReference,
      itemBuilder: (BuildContext context, DataSnapshot snapshot,
          Animation<double> animation, int index) {
        return Card(
            child: ListTile(
                //subtitle: widget.titlekey2==''?Container():Text(snapshot.child(widget.titlekey2).value.toString()),
                title: Text(snapshot.child('Addpharmaceutical').value.toString()),
               ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:     Color(0xff575de3),


      title: Text(
            widget.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Expanded(child: getData())
              ],
            )));
  }
}
