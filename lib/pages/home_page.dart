import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp_lite/components/my_drawer.dart';
import 'package:groceryapp_lite/models/cart_model.dart';
import 'package:provider/provider.dart';

import '../components/grocery_item_tile.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      drawer: MyDrawer(),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CartPage();
          },
        )),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.0),
            // Good {time of the day}
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Good morning",
                style: GoogleFonts.notoSerif(
                  fontSize: 18,
                ),
              ),
            ),

            SizedBox(
              height: 4,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Let's order fresh items for you",
                style: GoogleFonts.notoSerif(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(
              height: 16.0,
            ),

            // DIVIDER
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(),
            ),

            // SizedBox(
            //   height: 16.0,
            // ),

            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 24.0),
            //   child: Text(
            //     "Fesh Items",
            //     style: TextStyle(
            //       fontSize: 20.0,
            //     ),
            //   ),
            // ),

            Expanded(child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  itemCount: value.shopItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.3,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: () {
                        Provider.of<CartModel>(context, listen: false)
                            .addItemToCart(index);
                      },
                    );
                  },
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
