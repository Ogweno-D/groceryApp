// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  final void Function()? onPressed;

   const  GroceryItemTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              color: color[100], borderRadius: BorderRadius.circular(12.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Image
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: 94,
                width: 250,
              ),

              // itemName
              Text(itemName),

              // Price +Button
              MaterialButton(
                onPressed: onPressed,
                color: color,
                // ignore: prefer_interpolation_to_compose_strings
                child: Text(
                  '\$' + itemPrice,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
