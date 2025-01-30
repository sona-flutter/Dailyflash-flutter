import 'package:flutter/material.dart';
import '../widgets/input_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/google_sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login Into Your Account",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 70),
              InputField(
                controller: _emailController,
                hintText: 'Enter Email Address',
                icon: Icons.email,
              ),
              SizedBox(height: 30),
              InputField(
                controller: _passwordController,
                hintText: 'Enter Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text("Remember me"),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Forgot password?"),
                  ),
                ],
              ),
              SizedBox(height: 16),
              CustomButton(
                text: "Sign In",
                onPressed: () {
                  // Perform login logic
                },
              ),
              SizedBox(height: 16),
              GoogleSignInButton(),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account? "),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text("Sign Up Now"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
