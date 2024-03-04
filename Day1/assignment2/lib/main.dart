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
          leading: const Icon(Icons.person),
          actions: const [
            Icon(Icons.notification_add),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.favorite),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert)
          ],
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: const Text("Assignment"),
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
