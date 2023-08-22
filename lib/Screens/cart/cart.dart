import 'package:cakeshop/Provider/appState.dart';
import 'package:cakeshop/Screens/cart/cartItem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Provider.of<ProductsVM>(context, listen: false).clear();

              Navigator.pop(context);
            },
            child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 100,
                color: const Color.fromARGB(255, 112, 74, 56),
                child: const Text(
                  'Clear',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Provider.of<ProductsVM>(context, listen: false).clear();
              Navigator.pop(context);
              showAlertDialog(context);
            },
            child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 100,
                color: Theme.of(context).primaryColorDark,
                child: const Text(
                  'Checkout',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ],
      ),
      body: Consumer<ProductsVM>(
        builder: (context, value, child) => Scaffold(
          body: SafeArea(
            child: SizedBox(
              height: screenSize.height,
              width: double.infinity,
              child: ListView.builder(
                itemCount: value.lst.length ?? 3,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.horizontal,
                    background: Container(
                      color: Colors.red,
                    ),
                    onDismissed: (direction) {
                      value.del(index);
                    },
                    child: CartItem(
                      screenSize: screenSize,
                      image: value.lst[index].image,
                      itemName: value.lst[index].name,
                      price: value.lst[index].price,
                      quantity: value.lst[index].quantity,
                      del: () {},
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    Widget okButton = ElevatedButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text(
        "Thank you",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      content: const Text(
        "You have ordered successfuly.",
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
