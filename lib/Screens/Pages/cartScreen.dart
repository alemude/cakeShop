import 'package:cakeshop/Provider/appState.dart';
import 'package:cakeshop/Provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      body:Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      final item = cart.items[index];
                      return CartItemWidjet(item:item);
                    }
                ),
            ),
            Text('Total: \$${cart.total.toStringAsFixed(2)}'),
            ElevatedButton(onPressed: (){
              cart.clear();
              Navigator.pop(context);
            },
             child:const Text("Checkout")
             ),
          ],
          ),
    );
  }
  }
  class CartItemWidjet extends StatelessWidget {
    final CartItem item;
  const CartItemWidjet({Key?key,required this.item}):super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart=Provider.of<Cart>(context);
    return ListTile(
                        title: Text(item.name),
                        subtitle: Text('${item.price.toStringAsFixed(2)}*${item.quantiry}'),
                        trailing:
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () {
                                    if (item.quantiry > 1) {
                                      cart.removeItem(item.name as CartItem);
                                    }
                                  },
                                ),
                        
                      );
  }
}


