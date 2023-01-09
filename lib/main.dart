import 'package:asws/pages/DashBoard/dashboard.dart';
import 'package:asws/pages/login/login.dart';
import 'package:asws/pages/signup/sign_up.dart';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
void main() async{
  await Hive.initFlutter();

  Box box = await Hive.openBox('testBox');
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:const Color(0xff4D45B5),
        scaffoldBackgroundColor:const  Color(0xffF4F4FE),
        textTheme: const TextTheme(
          headline1:TextStyle(fontSize: 45,fontWeight: FontWeight.w900,color: Color(0xff3C4167))
        )
      ),

       home:LoginPage()
     //  LoginPage(),
      //DashBoard()
    );
  }
}

