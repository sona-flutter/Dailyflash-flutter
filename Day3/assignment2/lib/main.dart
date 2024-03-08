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
          title: const Text("Image in container"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child: Center(
              child: Image.network(
                'https://tse1.mm.bing.net/th?id=OIP.cCoxpYTwCFSE50mGpZ02iwHaE7&pid=Api&P=0&h=180',
                height: 300,
                width: 300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
