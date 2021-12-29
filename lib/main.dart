import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/pages/home.dart';
import 'package:flutter_new/pages/login.dart';
import 'package:flutter_new/pages/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //initialRoute: MyRoute.loginRout,
      routes: {
        "/": (context) => LoginPage(),
        MyRoute.loginRout: (context) => LoginPage(),
        MyRoute.homeRout: (context) => HomePage(),
      },
    );
  }
}
