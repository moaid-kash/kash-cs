import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

import 'legal notice.dart';
import 'main.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.ltr, child:  Scaffold(

        appBar: AppBar(
          backgroundColor:     Color(0xff575de3),

          title: Text(
            'FIBROMALGLA',
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
                  Text(textDirection:TextDirection.rtl,"هو أحد الأمراض النادرة جدآ ويعتبر مرض عضوي غير مميت أو معدي "
                      '\n يصيب النساء بنسبة أكبر من الرجال '
                      '\n وأعراض الفايبروميالجيا كثيرة جدآ ومتناقضة لذلك يصعب إكتشافه أو التشخيص الخاطئ للمرض .'
                      '\n يساعد التطبيق الأشخاص الذين يعانون من أعراض مشابه للفايبروميالجيا لتحديد إصابتهم بالمرض أم لا.'
                      '\n يقدم التطبيق للأشخاص الإرشادات الصحية أو الأدوية التي قد يحتاجها  المريض .'
                      '\n يقوم التطبيق بتشخيص مبدئي بالإصابة في حال تم تأكيد الإصابة يجب على المريض زيارة أحد أطباء الروماتيزم لتلقي العلاج المناسب لحالته.',

                    style: TextStyle(fontSize: 20.0),
                  )),
                ),
                SizedBox(height: 20,),


                Container(
                    height: 50,
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color(0xff575de3),
                    ),
                    child: ListTile(
                      title:  Text("الدخول للتطبيق",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage(
                                )));
                      },
                    )),




              ],)

        )));
  }
}
