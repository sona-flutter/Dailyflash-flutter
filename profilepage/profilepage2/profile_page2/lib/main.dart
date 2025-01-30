// lib/main.dart
import 'package:flutter/material.dart';
import 'constants/app_constant.dart';
import 'screens/profile/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      home: ProfileScreen(),
    );
  }
}
