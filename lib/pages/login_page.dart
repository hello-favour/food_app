import 'package:flutter/material.dart';
import 'package:food_app/components/app_button.dart';
import 'package:food_app/components/app_textfield.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/services/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({
    super.key,
    this.onTap,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() async {
    //fill out authentication here
    final _authService = AuthService();
    try {
      await _authService.signInUser(
          emailController.text, passwordController.text);
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  //forgot password
  void forgotPW() {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("User tapped forgot password"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),
            AppTexField(
              hintText: "Email",
              controller: emailController,
              obsecureText: false,
            ),
            const SizedBox(height: 10),
            AppTexField(
              hintText: "Password",
              controller: passwordController,
              obsecureText: true,
            ),
            const SizedBox(height: 10),
            AppButton(
              onTap: () {},
              text: "Sign In",
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now!",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
