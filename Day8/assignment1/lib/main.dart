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
          actions: const [
            Icon(
              Icons.circle,
              color: Colors.blue,
              size: 30,
            ),
            SizedBox(width: 10),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: ,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 250,
                      width: 150,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 250,
                      width: 150,
                      color: Colors.red,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(30),
                  height: 150,
                  width: 300,
                  color: Colors.green,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 250,
                      width: 150,
                      color: Colors.purple,
                    ),
                    Container(
                      height: 250,
                      width: 150,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
