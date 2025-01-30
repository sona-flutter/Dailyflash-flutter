import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // Implement Google Sign-In logic
      },
      icon: Image.asset('assets/google1.png', height: 20),
      label: Text("Sign in with Google"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
