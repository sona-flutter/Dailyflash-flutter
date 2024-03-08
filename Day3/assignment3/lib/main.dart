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
            backgroundColor: Colors.blue,
            title const Text("Container BackGround"),
          ),
          body: Center(
              child: Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://tse4.explicit.bing.net/th?id=OIP.skv2Yvioy50GHS2LVE9TtQHaGU&pid=Api&P=0&h=180',
                ),
                fit: BoxFit.cover,
              ),
              color: Colors.amber,
            ),
            child: const Center(
              child: Text(
                'Sonali',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
          )),
        ));
  }
}
