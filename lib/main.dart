import 'package:flutter/material.dart';
// import 'package:groceryapp_lite/auth/login_or_register.dart';
import 'package:groceryapp_lite/models/cart_model.dart';
import 'package:groceryapp_lite/pages/intro_page.dart';
// import 'package:groceryapp_lite/pages/auth/login_page.dart';
// import 'package:groceryapp_lite/pages/intro_page.dart';
import 'package:groceryapp_lite/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // const MyApp()
    ChangeNotifierProvider(create: (context) =>ThemeProvider(),
    child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:Provider.of<ThemeProvider>(context).themeData ,
        home: IntroPage(),
        // home: LoginOrRegister()
        // home: IntroPage(),
      ),
    );
  }
}
