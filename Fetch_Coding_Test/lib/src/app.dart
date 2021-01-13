import 'package:Fetch_Coding_Test/src/screens/main-screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fetch Coding Test",
      theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
      home: MainScreen(),
    );
  }
}
