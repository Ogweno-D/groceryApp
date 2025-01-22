import 'package:flutter/material.dart';

class MyQuantitySelector extends StatelessWidget {
  final int quantity;
  final String item;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const MyQuantitySelector({
    super.key,
    required this.item,
    required this.quantity,
    required this.onDecrement,
    required this.onIncrement,
    
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12.0)
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          // Decrease button
          GestureDetector(
            onTap: onDecrement,
            child: Icon(
              Icons.remove,
              size:20.0,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          
          // Quantity Count
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Center(
              child: Text(
                quantity.toString()
              ),
            ),
          ),

           // Increase button
          GestureDetector(
            onTap: onIncrement,
            child: Icon(
              Icons.add,
              size:20.0,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
