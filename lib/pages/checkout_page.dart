import 'package:flutter/material.dart';
import 'package:groceryapp_lite/pages/cart_page.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          
        ],
      ),
      body: CustomScrollView(primary: true, slivers: <Widget>[
        SliverAppBar(
          title: const Text('Checkout'),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.shopping_cart),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // handle the press
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return CartPage();
                  }));
                }),
          ],
        ),
      ]),
    );
  }
}
