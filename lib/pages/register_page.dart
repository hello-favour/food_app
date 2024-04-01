import 'package:flutter/material.dart';
import 'package:food_app/components/app_button.dart';
import 'package:food_app/components/app_textfield.dart';
import 'package:food_app/services/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({
    super.key,
    this.onTap,
  });

  @override
  State<RegisterPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  //register method
  void register() async {
    final _authService = AuthService();
    //check if password match => create user
    if (passwordController.text == confirmPasswordController.text) {
      try {
        await _authService.signUpUser(
            emailController.text, confirmPasswordController.text);
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
      //if password don't match show error
    }else{
         showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Password don't match!"),
          ),
        );
      }
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
              "Let's create an account",
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
            AppTexField(
              hintText: "Confirm Password",
              controller: confirmPasswordController,
              obsecureText: true,
            ),
            const SizedBox(height: 10),
            AppButton(
              onTap: register,
              text: "Sign Up",
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
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
