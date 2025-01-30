import 'package:flutter/material.dart';
import '../widgets/input_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/google_sign_in_button.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
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
                "Create an Account",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 32),
              InputField(
                controller: _nameController,
                hintText: 'Full Name',
                icon: Icons.person,
              ),
              SizedBox(height: 16),
              InputField(
                controller: _emailController,
                hintText: 'Email Address',
                icon: Icons.email,
              ),
              SizedBox(height: 16),
              InputField(
                controller: _phoneController,
                hintText: 'Phone Number',
                icon: Icons.phone,
              ),
              SizedBox(height: 16),
              InputField(
                controller: _genderController,
                hintText: 'Gender',
                icon: Icons.person_outline,
              ),
              SizedBox(height: 16),
              InputField(
                controller: _passwordController,
                hintText: 'Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              SizedBox(height: 16),
              CustomButton(
                text: "Register Now",
                onPressed: () {
                  // Perform registration logic
                },
              ),
              SizedBox(height: 16),
              GoogleSignInButton(),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text("Sign In Now"),
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
