import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp_lite/models/cart_model.dart';
import 'package:provider/provider.dart';

import 'checkout_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
        ),
        body: Consumer<CartModel>(
          builder: (context, value, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "My Cart",
                    style: GoogleFonts.notoSerif(
                      fontSize: 36, 
                      fontWeight: FontWeight.bold),
                  ),
                ),
                
                // List of Cart Items
                Expanded(
                    child: ListView.builder(
                  padding: EdgeInsets.all(12.0),
                  itemCount: value.cartItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8)),
                        child: ListTile(
                          leading: Image.asset(
                            value.cartItems[index][2],
                            height: 36,
                            fit: BoxFit.cover,
                          ),
                          title: Text(value.cartItems[index][0]),
                          subtitle: Text('\$' + value.cartItems[index][1]),
                          trailing: IconButton(
                              onPressed: () =>
                                  Provider.of<CartModel>(context, listen: false)
                                      .removeItemFromCart(index),
                              icon: Icon(Icons.cancel)),
                        ),
                      ),
                    );
                  },
                )),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(color: Colors.green[100]),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              '\$' + value.calculateTotal(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        // Pay Button
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green.shade100),
                              borderRadius: BorderRadius.circular(12.0)),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return CheckoutPage();
                              }));
                            },
                            child: Row(
                              children: [
                                Text(
                                  "Pay Now",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}
