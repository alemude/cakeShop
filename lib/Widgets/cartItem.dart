import 'package:flutter/material.dart';

class CartItemm extends StatelessWidget {
  const CartItemm(
      {Key? key, required this.screenSize, required this.price,
       required this.image, required this.itemName, required this.del})
      : super(key: key);

  final Size screenSize;
  final String itemName;
  final Image image;
  final double price;
  final Function del;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: screenSize.height * 0.15,
      width: screenSize.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.blue[200]!.withOpacity(0.3),
                offset: Offset(0, 0),
                blurRadius: 3,
                spreadRadius: 3)
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image(
            height: screenSize.height * 0.13,
            width: screenSize.width * 0.3,
            fit: BoxFit.cover,
            
            image: AssetImage('assets/images/f1.jpg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            itemName ?? "Item",
            style: TextStyle(fontSize: 22),
          ),
        ),
        Padding(padding: EdgeInsets.all(8.0),
        child: Text('${price}')
    )
      ]),
    );
  }
}
