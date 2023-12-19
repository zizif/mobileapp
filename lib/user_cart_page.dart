import 'package:flutter/material.dart';
import 'cart.dart';


class UserCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Cart.items.isEmpty
          ? Center(
        child: Text('Your cart is empty.'),
      )
          : ListView.builder(
        itemCount: Cart.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(Cart.items[index].name),
            subtitle: Text('\$${Cart.items[index].price.toString()}'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(Cart.items[index].imageUrl),
            ),
          );
        },
      ),
    );
  }
}