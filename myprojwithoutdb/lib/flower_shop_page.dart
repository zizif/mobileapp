import 'package:flutter/material.dart';
import 'flower.dart';
import 'cart.dart';
import 'user_cart_page.dart';
import 'flower_details_page.dart';

class FlowerShopPage extends StatefulWidget {
  final String username;

  FlowerShopPage({required this.username});

  @override
  _FlowerShopPageState createState() => _FlowerShopPageState();
}

class _FlowerShopPageState extends State<FlowerShopPage> {
  late String _appBarTitle;// hon late l2n rah ykun fi ela shi hattou fyia ba3den w ma rah tdal empty
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();// mafini 8ayer hon
  List<Flower> _cartItems = [];

  @override
  void initState() {
    super.initState();// is used as the base class for the state objects associated with widgets; method in Flutter that is called when the associated StatefulWidget
    _appBarTitle = 'Flower Shop ';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(_appBarTitle),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              _showCartBottomSheet();//a Flutter function that shows a modal bottom sheet.
            },
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: flowers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(flowers[index].name),
            subtitle: Text('\$${flowers[index].price.toString()}'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(flowers[index].imageUrl),
            ),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                _addToCart(flowers[index]);
                ScaffoldMessenger.of(context).showSnackBar(
                  //showsackbar
                  SnackBar(content: Text('Added to Cart')),// la y2ull is added to ur cart
                );
              },
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FlowerDetailsPage(flower: flowers[index]),
                  //builder This is a callback function
                ),
              );
            },
          );
        },


      ),
    );
  }

  void _addToCart(Flower flower) {
    setState(() {
      _cartItems.add(flower);
    });
  }

  void _showCartBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        double totalPrice = _cartItems.fold(0, (sum, flower) => sum + flower.price);

        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Your Cart',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Display cart items
              for (var item in _cartItems)
                ListTile(
                  title: Text(item.name),
                  subtitle: Text('\$${item.price.toString()}'),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(item.imageUrl),
                  ),
                ),
              SizedBox(height: 10),
              Text(
                'Total: \$${totalPrice.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the bottom sheet
                },
                child: Text('Close'),
              ),
            ],
          ),
        );


      },
    );
  }
}