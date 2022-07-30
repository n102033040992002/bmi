import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        canvasColor: Colors.tealAccent,
        iconTheme: IconThemeData(color: Colors.white,size: 90,),
        textTheme: TextTheme(
          headline2: TextStyle(fontSize: 30, fontWeight: FontWeight.bold , color: Colors.black),

      )

      ),
      home: const MyHomePage(),
    );
  }
}


