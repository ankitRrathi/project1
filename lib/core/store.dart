import 'package:project1/models/cart.dart';
import 'package:project1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  CartModel cart;

  // Create a constructor that accepts a catalog and initializes cart
  MyStore({required this.catalog}) : cart = CartModel() {
    cart.catalog = catalog;
  }
}
