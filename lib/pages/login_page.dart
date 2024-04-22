import 'package:flutter/material.dart';
import 'package:flutter_lingodingo/core/theme/app_pallete.dart';
import 'package:flutter_lingodingo/pages/landing_page.dart';
import 'package:flutter_lingodingo/pages/signup_page.dart';
import 'package:flutter_lingodingo/widgets/button_widget.dart';
import 'package:flutter_lingodingo/widgets/textfield_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
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
                "Login",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              TextInputField(hintText: "Email", controller: emailController),
              const SizedBox(height: 20),
              TextInputField(
                hintText: "Password",
                controller: passwordController,
                isObscureText: true,
              ),
              const SizedBox(height: 20),
              ButtonWidget(
                buttonText: "Login",
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
                    "Don't have an account? ",
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
                          builder: (context) => const SignUpPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: AppPallete.gradient2,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
