import 'package:flutter/material.dart';
import 'cart.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: Cart.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(Cart.items[index].name),
            subtitle: Text('\$${Cart.items[index].price.toString()}'),
          );
        },
      ),
    );
  }
}