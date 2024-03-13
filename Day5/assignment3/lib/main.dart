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
          title: const Text(
            "Name in decor Container",
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Column(
          children: [
            Image.network(
              'https://tse1.mm.bing.net/th?id=OIP.mpDqwS5fTI_xMfjPuUoXzwAAAA&pid=Api&P=0&h=180',
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 30,
                    )
                  ]),
              child: const Text(
                "Sonali Dhavale",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
