import 'package:blog_app/core/theme/palette.dart';
import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_button.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign In.",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            AuthField(
              hintText: "Email",
              controller: emailController,
            ),
            const SizedBox(height: 10),
            AuthField(
              hintText: "Password",
              controller: passwordController,
              isObscureText: true,
            ),
            const SizedBox(height: 15),
            AuthButton(
              onPressed: () {
                formKey.currentState!.validate();
              },
              buttonName: "Sign In",
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignupPage())),
              child: RichText(
                text: TextSpan(
                    text: "Don't have an account? ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: AppPallette.gradient2,
                                  fontWeight: FontWeight.bold,
                                ),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
