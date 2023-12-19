import 'flower.dart';

class Cart {
  static List<Flower> items = [];

  static void addToCart(Flower flower) {
    items.add(flower);
  }
}