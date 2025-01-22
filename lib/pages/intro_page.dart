import 'package:flutter/material.dart';
import 'package:groceryapp_lite/auth/login_or_register.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Logo
          Padding(
            padding: const EdgeInsets.fromLTRB(80.0, 140.0, 80.0, 30.0),
            child: Image.asset('lib/images/grocery.png'),
          ),

          //We deliver groceries at your doorstep
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "We deliver groceries at your doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Text(
            "Fresh items everyday",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey[600],
            ),
          ),
          const Spacer(),

          //Get Started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return LoginOrRegister();
              },
            )),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(12.0)),
              padding: EdgeInsets.all(24.0),
              child: Text(
                " Get Started",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
