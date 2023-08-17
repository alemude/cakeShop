import 'package:flutter/material.dart';

class AddToCartPage extends StatefulWidget {
  const AddToCartPage({super.key});

  @override
  State<AddToCartPage> createState() => _AddToCartPageState();
}

class _AddToCartPageState extends State<AddToCartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
      child: Column(children: [
        Image.asset(''),
        const Text('name'),
        const Text('price'),
        ElevatedButton(
          onPressed:(){},
           child:const Text('Add to cart') )
      ],),
    );
  }
}