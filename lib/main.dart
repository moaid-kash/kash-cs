import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kash/ListInstructions.dart';
import 'Home.dart';
import 'ListViewItem.dart';
import 'Listpharmaceutical.dart';
import 'colors.dart';
import 'legal notice.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Home( ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    height: 50,
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color(0xff575de3),
                    ),
                    child: ListTile(
                      leading:  Image.asset('assets/images/a6.jpg' ,width: 40,),
                      title: const Text("التشخيص",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LegalNotice()));

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
                      title: const Text("إرشادات الصحية ",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListInstructions(
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
                      title: const Text("الادواية  ",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center),
                      onTap: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Listpharmaceutical(
                                )));
                      },
                    )),





              ],)

     ));
  }
}
