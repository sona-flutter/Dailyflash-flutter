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
          title: const Text("3 container with Image"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                height: 200,
                width: 200,
                child: Image.network(
                  'https://images.unsplash.com/photo-1567878673942-be055fed5d30?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max',
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.network(
                  'https://images.unsplash.com/photo-1567878673942-be055fed5d30?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max',
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.network(
                  'https://images.unsplash.com/photo-1567878673942-be055fed5d30?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
