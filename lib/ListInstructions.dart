
import 'package:flutter/material.dart';

import 'DisplayInstructions.dart';

class ListInstructions extends StatefulWidget {
  @override
  State<ListInstructions> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ListInstructions> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(
          backgroundColor:     Color(0xff575de3),

          title: Text(
           'إرشادات',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                    height: 50,
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color(0xff575de3),
                    ),
                    child: ListTile(
                      leading:  Image.asset('assets/images/a5.jpg' ,width: 40,),
                      title: const Text("إرشادات عامة",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DispaylistInstructions(
                                  title: 'إرشادات عامة',
                                )));
                      },
                    )),


                SizedBox(height: 20,),
                Container(
                    height: 50,
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color(0xff575de3),
                    ),
                    child: ListTile(
                      leading: Image.asset('assets/images/a4.jpg',width: 45,),
                      title: const Text("إرشادات غذائية ",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DispaylistInstructions(
                                  title: 'إرشادات غذائية ',
                                )));
                      },
                    )),




                SizedBox(height: 20,),


                Container(
                    height: 50,
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color(0xff575de3),
                    ),
                    child: ListTile(
                      leading: Image.asset('assets/images/a3.jpg',width: 45,),
                      title: const Text("إرشادات إجتماعية",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DispaylistInstructions(
                                  title: 'إرشادات إجتماعية ',
                                )));
                      },
                    )),





                SizedBox(height: 20,),


                Container(
                    height: 50,
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color(0xff575de3),
                    ),
                    child: ListTile(
                      leading: Image.asset('assets/images/a2.jpg',width: 45,),
                      title: const Text("إرشادات نفسية",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DispaylistInstructions(
                                  title: 'إرشادات نفسية  ',
                                )));
                      },
                    )),



                SizedBox(height: 20,),


                Container(
                    height: 50,
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color(0xff575de3),
                    ),
                    child: ListTile(
                      leading: Image.asset('assets/images/a1.jpg',width: 45,),
                      title: const Text("إرشادات رياضية",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DispaylistInstructions(
                                  title: 'إرشادات غذائية ',
                                )));



                      },
                    )),





              ],)

        ));
  }
}
