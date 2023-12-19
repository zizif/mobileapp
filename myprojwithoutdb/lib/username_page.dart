import 'package:flutter/material.dart';
import 'flower_shop_page.dart';


class UsernamePage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to our store '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),//kello ad ba3d 'object with a padding of 16.0 units for all sides of the box'
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,// la klshi yn7att 3al nos
          children: [
            Image.network(
              'https://www.thespruce.com/thmb/XOLbe_jhbV_cyvA5wT_OrdDpius=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/pictures-of-orange-flowers-4061768-hero-af9e809318964fbcae6e922aa3cc8182.JPG',
              height: 400,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _usernameController,// l box
              decoration: InputDecoration(labelText: 'Enter your name'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlowerShopPage(username: _usernameController.text),
                  ),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}