import 'package:flutter/material.dart';

class AddToCartPage extends StatefulWidget {
  const AddToCartPage({super.key});

  @override
  State<AddToCartPage> createState() => _AddToCartPageState();
}

class _AddToCartPageState extends State<AddToCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 150, 144, 144),
        appBar: AppBar(
          title: const Text(
            'Cake Shop',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 69, 46, 131),
          foregroundColor: Colors.white,
          centerTitle: true,
          actions: const [
            Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 5, left: 5),
                child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 10,
                    child: Text('0')),
              ),
              Padding(
                padding: EdgeInsets.only(top: 1, right: 15),
                child: Icon(Icons.shopping_cart),
              ),
            ]),
          ],
        ),
      body:Center(
        child: Column(
          children: [
            Stack(
              children: [Container(
                height:400 ,
               width:double.infinity,
              decoration: const BoxDecoration(
                image:DecorationImage(image: AssetImage('assets/images/f7.jpg'),
                fit: BoxFit.cover,
                )
              ),
                      ),
                       Positioned(
                        top:300,
                        left:100,
                         child: Container(
                          color: Colors.white,
                           child: Column(children: [
                                         const Text('Name: Cake 007',style:TextStyle(
                                          fontSize: 18,fontWeight: FontWeight.bold,
                                         )),
                                         const Text('Price: 2000',style:TextStyle(
                                          fontSize: 18,fontWeight: FontWeight.bold,
                                         )),
                                         SizedBox(
                                          height: 50,
                                          width: 200,
                                           child: ElevatedButton(
                                         
                                             onPressed:(){},
                                              style:ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(255, 16, 11, 80),
                                                textStyle: const TextStyle(fontSize:19),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:BorderRadius.circular(10) ,
                                                )
                                              ),
                                              child:const Text('Add to cart')
                                              
                                               ),
                                         ),
                                       ],),
                         ),
                       ),
                      ],
            ),
          const Text('Related cakes',style:TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
          ) ,),

          ],
        ),
      ) ,
    );
  }
}