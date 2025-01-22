import 'package:flutter/material.dart';
import 'package:groceryapp_lite/components/my_button.dart';
import 'package:groceryapp_lite/components/my_textfield.dart';
import 'package:groceryapp_lite/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;

  const LoginPage({
    super.key,
    required this.onTap,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Text Editing Controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void login() {
    /*

    Authentication logic

    */
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    //   return HomePage();
    // }));
    // OR this route find out which is which
    Navigator.push(
        context, MaterialPageRoute(builder: (context) =>const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(
              height: 24,
            ),

            Text(
              "Grocery Shopping App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(
              height: 24,
            ),

            //Email textfield
            MyTextfield(
                controller: emailController,
                hintText: "Email",
                obscureText: false),

            const SizedBox(
              height: 20,
            ),
            //password Textfield
            MyTextfield(
                controller: passwordController,
                hintText: "Enter your Password",
                obscureText: true),

            const SizedBox(
              height: 24,
            ),

            //Sign In button
            MyButton(onTap: login, text: "Sign In"),

            const SizedBox(
              height: 24,
            ),
            //Not a member, register now?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now.",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
