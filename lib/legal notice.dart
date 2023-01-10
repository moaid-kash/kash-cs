import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

import 'ListViewItem.dart';
import 'main.dart';

class LegalNotice extends StatefulWidget {


  @override
  State<LegalNotice> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<LegalNotice> {
 var isSectect=false;

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child:  Scaffold(

        appBar: AppBar(
          backgroundColor:     Color(0xff575de3),

          title: Text(
            'مذكرة قانونية',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Container(
            margin: const EdgeInsets.all(30.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(
                width: 1.0
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(5.0) //         <--- border radius here
            ),
              ), //       <--- BoxDecoration here
              child:Directionality(textDirection: TextDirection.rtl, child:
              Text(textDirection:TextDirection.rtl,"مذكرة قانونية "
                  '\n هذا التطبيق لا يحل محل الإستشارة مع الطبيب !'
                  '\n اينبغي التعامل مع هذا التطبيق كنصيحة  الطبيب أو التشخيص النهائي.'
                  '\n تم إعداد هذا التطبيق لأغراض إعلامية وتثقيفية فقط.'
                  '\n بعد قراءة هذا القسم والموافقة عليه توافق على إعفاء منشئ هذا التطبيق من إي مسؤلية .',

                style: TextStyle(fontSize: 20.0),
              )),
            ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Checkbox(
                        value: isSectect,
                        onChanged: (v) {
                          setState(() {
                            isSectect = v!;
                          });
                        }),
                    Text('أوافق على '),
                    GestureDetector(
                      child: const Text(
                        "الشروط والأحكام ",
                        style: TextStyle(
                            color: Color(0xff575de3),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {

                      },
                    )
                  ],
                ),

                if(isSectect)
                Container(
                    height: 50,
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color(0xff575de3),
                    ),
                    child: ListTile(
                      title: const Text("ابدا التشخيص ",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExemPage(id_Exam: '',
                                )));
                      },
                    )),




              ],)

        )));
  }
}
