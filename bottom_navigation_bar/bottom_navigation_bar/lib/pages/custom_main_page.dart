import 'package:flutter/material.dart';

class Custom_Main_Page extends StatelessWidget {
  const Custom_Main_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 60,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
