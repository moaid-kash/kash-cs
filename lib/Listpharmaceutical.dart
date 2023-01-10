
import 'package:flutter/material.dart';

import 'DispayListPharmaceutical.dart';

class Listpharmaceutical extends StatefulWidget {
  @override
  State<Listpharmaceutical> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Listpharmaceutical> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor:     Color(0xff575de3),

        title: Text(
          'الادواية',
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
                      title: const Text("مسكنات ومنومات",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DispayListPharmaceutical(
                                  title: 'مسكنات ومنومات',
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
                      title: const Text("مضادات",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DispayListPharmaceutical(
                                  title: 'مضادات ',
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
                      title: const Text("باسط ومرخي عضلات",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DispayListPharmaceutical(
                                  title: 'باسط ومرخي عضلات',
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
                      title: const Text("  فيتامينات ومكملات",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DispayListPharmaceutical(
                                  title: 'فيتامينات ومكملات',
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
                      title: const Text("منشطات",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DispayListPharmaceutical(
                                  title: 'منشطات ',
                                 )));
                      },
                    )),





              ],)

        ));
  }
}
