import 'package:flutter/material.dart';

import 'flower.dart';


class FlowerDetailsPage extends StatelessWidget {
  final Flower flower;

  FlowerDetailsPage({required this.flower});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flower Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,// kello ykun 3ala l shmel ta7t b3d
          children: [
            Image.network(
              flower.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,// kif tkun shakl l sura
            ),
            SizedBox(height: 20),
            Text(
              flower.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '\$${flower.price.toString()}',
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
            SizedBox(height: 20),
            Text(
              flower.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}