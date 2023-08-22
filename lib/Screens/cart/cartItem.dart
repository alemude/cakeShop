import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem(
      {Key? key, required this.screenSize, required this.image, required this.itemName, required this.del, required this.price,required this.quantity})
      : super(key: key);

  final Size screenSize;
  final String? image, itemName,price,quantity;
  final Function del;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: const EdgeInsets.all(10),
        height: widget.screenSize.height * 0.15,
        width: widget.screenSize.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.blue[200]!.withOpacity(0.3),
                  offset: const Offset(0, 0),
                  blurRadius: 3,
                  spreadRadius: 3)
            ]),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              height: widget.screenSize.height * 0.13,
              width: widget.screenSize.width * 0.3,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              imageUrl: widget.image ?? 'https://picsum.photos/250?image=9',
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Name: ${
                  widget.itemName ?? "Item"}',
                  style: const TextStyle(fontSize:15,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,),
                ),
              ),
                      Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Price: ${
                  widget.price ?? "price"}',
                  style: const TextStyle(fontSize:18,
                  color: Color.fromARGB(255, 223, 121, 5),
                  fontWeight: FontWeight.bold,),
                ),
            
          ),
                  Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Quantity: ${
                  widget.quantity ?? "quantity"}',
                  style: const TextStyle(fontSize: 15,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  ),
                ),
          ),
            ],
          ),
    IconButton(onPressed: (){
    },
     icon: const Icon(Icons.delete,
     color:Colors.red,
     size:20,
     ))
        ]),
      );
  }
   
}
