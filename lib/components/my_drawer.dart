import 'package:flutter/material.dart';
import 'package:groceryapp_lite/components/my_drawe_tile.dart';
import 'package:groceryapp_lite/pages/cart_page.dart';
import 'package:groceryapp_lite/pages/checkout_page.dart';

import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // App Icon
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          // Home
          MyDraweTile(
              text: "H O M E",
              onTap: () => Navigator.pop(context),
              icon: Icons.home_filled),

          // Settings
          MyDraweTile(
              text: "S E T T I N G S",
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              },
              icon: Icons.settings),

          // Cart
          MyDraweTile(
            text: "C A R T", 
            onTap: () {
             Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartPage(),
                        ));
          }, icon: Icons.shopping_bag),

          // Cart
          MyDraweTile(
              text: "C H E C K O U T", 
              onTap: () {
                 Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CheckoutPage()));
              }, icon: Icons.payment),

          const Spacer(),
          // Logout
          MyDraweTile(
            text: "L O G O U T", 
            onTap: () {


          }, icon: Icons.logout),

          const Spacer()
        ],
      ),
    );
  }
}
