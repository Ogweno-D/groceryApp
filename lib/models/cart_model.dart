import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // List of the items on Sale

  final List _shopItems = [
    // [itemName, itemPrice, imagePath, color]
    [
      "Avocado",
      "4.50",
      "lib/images/avocado.jfif",
      Colors.green,
    ],
    [
      "Banana",
      "2.50",
      "lib/images/banana.jfif",
      Colors.yellow,
    ],
    [
      "Guavas",
      "4.50",
      "lib/images/guava.jfif",
      Colors.lightGreenAccent,
    ],
    [
      "Tomatoes",
      "4.50",
      "lib/images/tomato.jfif",
      Colors.redAccent,
    ],
    [
      "Avocado",
      "4.50",
      "lib/images/avocado.jfif",
      Colors.green,
    ],
    [
      "Banana",
      "2.50",
      "lib/images/banana.jfif",
      Colors.yellow,
    ],
    [
      "Guavas",
      "4.50",
      "lib/images/guava.jfif",
      Colors.lightGreenAccent,
    ],
    [
      "Tomatoes",
      "4.50",
      "lib/images/tomato.jfif",
      Colors.redAccent,
    ],
  ];

  // List of Cart Item
  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  // Add item to the cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // Remove item from the cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // Calculate the total price

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
