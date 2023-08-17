import 'package:cakeshop/Provider/appState.dart';
import 'package:cakeshop/Provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Product {
  final String name;
  final String description;
  final double price;

  var quantiry;
  Product({required this.name, required this.description, required this.price});
}

class ProductScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: 'Product 1', description: 'Description of product 1', price: 10),
    Product(
        name: 'Product 2', description: 'Description of product 2', price: 20),
    Product(
        name: 'Product 3', description: 'Description of product 3', price: 30),
    Product(
        name: 'Product 4', description: 'Description of product 3', price: 20),
    Product(
        name: 'Product 5', description: 'Description of product 3', price: 30),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cart'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, '/cart');
      }),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return ProductWidget(product: product);
          }),
    );
  }
}

class ProductWidget extends StatelessWidget {
  final Product product;
  const ProductWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return ListTile(
      title: Text(product.name),
      subtitle: Text(product.description),
      trailing: IconButton(
        icon: const Icon(Icons.add_shopping_cart),
        onPressed: () {
          cart.removeItem(CartItem(
              name: product.name,
              price: product.price,
              quantiry: product.quantiry));
        },
      ),
    );
  }
}
