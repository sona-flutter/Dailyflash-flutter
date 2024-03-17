import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text("Gradient"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.blue,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
