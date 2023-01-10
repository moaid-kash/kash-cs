
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

var i=0;
var leve2=0;
var falseleve1=0;
var leve3=0;
var falseleve=0;

class ExemPage extends StatefulWidget{
  final String id_Exam;

  ExemPage({Key? key, required this.id_Exam}) : super(key: key){
    i=0;
    falseleve=0;

    falseleve1=0;

    leve2=0;
    leve3=0;
  }


  @override
  ExemState createState() => ExemState();
}

class ExemState extends State<ExemPage>{
  final databaseReference = FirebaseDatabase.instance.ref('المرحلة 1');
  final databaseReference2 = FirebaseDatabase.instance.ref('المرحلة 2');
  final databaseReference3 = FirebaseDatabase.instance.ref('المرحلة 3');


  getData(){
      return FirebaseAnimatedList(query: databaseReference,
        itemBuilder: (BuildContext context, DataSnapshot snapshot,
            Animation<double> animation, int index) {

          if (index == i) {
            return Card(child:
            ListTile(
              title: Text(snapshot
                  .child('question')
                  .value
                  .toString()),
              leading: GestureDetector(
                child: const Icon(Icons.question_mark, color: Colors.red,),
                //onTap: () {
                //              databaseReference.child(snapshot.child('id').value.toString()).remove();
//                Fluttertoast.showToast(msg: 'تم الحذف ',toastLength: Toast.LENGTH_SHORT,);

                // },
              ), subtitle: Row(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    i++;
                  });


                },
                    child: Text("نعم ", style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold))),
                SizedBox(width: 100,),


                ElevatedButton(onPressed: () {

                  print('kash ');
                  setState(() {
                    falseleve++;
                    i++;
                    falseleve1++;
                  });
                },
                    child: const Text("لا ", style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold))),

              ],),));
          }
          else {
            return Container();
          }
        },

      );
   }

   getDataleve2(){
    return FirebaseAnimatedList(query: databaseReference2,
      itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {


        if (index==leve2) {
          return Card(child:
          ListTile(
            title: Text(snapshot
                .child('question')
                .value
                .toString()),
            leading: GestureDetector(
              child: const Icon(Icons.question_mark, color: Colors.red,),

            ),subtitle: Row(
            crossAxisAlignment:CrossAxisAlignment.center,

            children: [
              ElevatedButton(
                  onPressed: (){
                setState(() {
                  leve2++;
                });


              }, child: const Text("نعم ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))),
              const SizedBox(width: 100,),
              ElevatedButton(onPressed: (){
                setState(() {
                  falseleve++;
                });


              }, child: const Text("لا ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))),

            ],),));}
        else{
          return Container();
        }


      },

    );
  }

  getDataleve3(){
    return FirebaseAnimatedList(query: databaseReference3,
      itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {


        if (index==leve3) {
          return Card(child:
          ListTile(
            title: Text(snapshot
                .child('question')
                .value
                .toString()),
            leading: GestureDetector(
              child: const Icon(Icons.question_mark, color: Colors.red,),

            ),subtitle: Row(
            crossAxisAlignment:CrossAxisAlignment.center,

            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  leve3++;
                });


              }, child: const Text("نعم ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))),
              const SizedBox(width: 100,),
              ElevatedButton(onPressed: (){

                setState(() {
                  falseleve++;
                });

              }, child: const Text("لا ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))),

            ],),));}
        else{
          return Container();
        }


      },

    );
  }

    getDataR(){

    if(falseleve1==0) {
      return Card(child:
      ListTile(
        title: Text(leve3 != 0 ? ' مصاب' : 'غير مصاب '),
      ));

    }else{
      return Card(child:
      ListTile(
        title: Text( ' غير مصاب مع احتمالية المرض  '),
      ));


    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: const Text("التشخيص",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

          backgroundColor:     Color(0xff575de3),
        ),
        body:Directionality(textDirection:TextDirection.rtl,child:


        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(height: 30,),

            i!=8?
            Expanded(child: falseleve==0 || i!=8 ?
///

     getData()

  ///
                :getDataR() ):Container(),

            i==8 && leve2!=11?
            Expanded(child: falseleve==0?
///

          getDataleve2()
  ///
                :getDataR()):Container(),


            leve2==11 ?
            Expanded(child: falseleve==0?
///

          getDataleve3()
  ///
                :       const Card(child:
            ListTile(
              title: Text(' مصاب') ,
            ))):Container(),

            leve3==12?
             Expanded(child:

                 Card(child:
            ListTile(
              subtitle:  ElevatedButton(onPressed:(){
                print("object");
                Navigator.of(context).pop();
              }  , child: Text('الرجوع '),),


            title: Text(' مصاب')
              ,
        ))):Container(),




          ],)));
  }

}