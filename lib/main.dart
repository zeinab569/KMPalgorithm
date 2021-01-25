import 'package:flutter/material.dart';
import 'package:quran/screens/Home.dart';
import 'package:quran/widgets/show.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Show(),
    );
  }
}
