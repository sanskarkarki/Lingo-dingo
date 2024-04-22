import 'package:flutter/material.dart';
import 'package:flutter_lingodingo/core/theme/app_pallete.dart';
import 'package:flutter_lingodingo/pages/landing_page.dart';
import 'package:flutter_lingodingo/pages/login_page.dart';
import 'package:flutter_lingodingo/widgets/button_widget.dart';
import 'package:flutter_lingodingo/widgets/textfield_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              TextInputField(hintText: "Name", controller: nameController),
              const SizedBox(height: 20),
              TextInputField(hintText: "Email", controller: emailController),
              const SizedBox(height: 20),
              TextInputField(
                  hintText: "Password", controller: passwordController),
              const SizedBox(height: 20),
              ButtonWidget(
                buttonText: "Sign Up",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LandingPage(),
                        ),
                        (Route<dynamic> route) => false);
                  }
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: AppPallete.gradient2,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
