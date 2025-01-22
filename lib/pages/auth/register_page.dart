import 'package:flutter/material.dart';

import '../../components/my_button.dart';
import '../../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Text Editing Controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

            const SizedBox(height: 24,),
            
            Text(
              "Grocery Shopping App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 24,),
        
            //Email textfield
            MyTextfield(
                controller:emailController,
                hintText: "Email",
                obscureText: false
              ),

            const SizedBox(height: 20,),

            //password Textfield
            MyTextfield(
                controller:passwordController,
                hintText: "Enter your Password",
                obscureText: true
              ),

            const SizedBox(height: 20,),
            // Confirm Password Textfield
            MyTextfield(
                controller:confirmPasswordController,
                hintText: "Confirm your Password",
                obscureText: true
              ),
            
        
            const SizedBox(height: 24,),
            //Sign Up button
            MyButton(
              onTap: (){}, 
              text: "Sign In"
            ),
        
            const SizedBox(height: 24,),
            //Not a member, register now?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                ),

                const SizedBox(width: 4,),

                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Login now.",
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
