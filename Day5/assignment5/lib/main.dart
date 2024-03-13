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
          title: const Text("3 widget"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://tse1.mm.bing.net/th?id=OIP.mpDqwS5fTI_xMfjPuUoXzwAAAA&pid=Api&P=0&h=180',
                  width: 200,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
