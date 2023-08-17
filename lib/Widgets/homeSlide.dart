import 'package:cakeshop/Screens/Pages/addToCart.dart';
import 'package:cakeshop/Screens/Pages/homePage.dart';
import 'package:flutter/material.dart';

HomeSlider(String imgPath, String name, int quantity, String description,
    String price, String count,bool isFavourite) {
  return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
          height: 500,
          width: 220,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 400,
                  ),
                  Positioned(
                    top: 20,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      height: 460,
                      width: 225,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 252, 250, 250),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 0,
                      top: 20,
                      child: Container(
                          height: 150,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(imgPath),
                              fit: BoxFit.cover,
                            ),
                          ))),
                  Positioned(
                    top: 180,
                    left: 60,
                    child: Text(
                      name,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 17, 1, 1),
                        fontFamily: 'varela',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 220,
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      width: 220,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            price,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 17, 1, 1),
                              fontFamily: 'varela',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                                Text(
                count,
                style: const TextStyle(fontSize: 50),
              ),

                        ],
                      ),
                    ),
                  ),
Positioned(
  top:250,
  child: SizedBox(
    width: 200,
    child: Text(
      description,
style: const TextStyle(
  fontSize:12,
),
    ),
  )),
                          const Positioned(
                            top: 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left:23,right:23),
                                    child: Icon(
                                      Icons.star_border,
                                      color: Color.fromARGB(255, 218, 171, 19),
                                    ),
                                  ),
                                 Padding(
                                    padding: EdgeInsets.only(left:23,right:23),
                                    child: Icon(
                                      Icons.star_border,
                                      color: Color.fromARGB(255, 218, 171, 19),
                                    ),
                                  ),
                                 Padding(
                                    padding: EdgeInsets.only(left:23,right:23),
                                    child: Icon(
                                      Icons.star_border,
                                      color: Color.fromARGB(255, 218, 171, 19),
                                    ),
                                  ),
                                ],
                              ),
                          ),



                  Positioned(
                    top: 350,
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(context,
                        //  MaterialPageRoute(builder: (context) => const AddToCartPage()));
                      },
                      child: Container(
                        height: 50,
                        width: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 31, 20, 91),
                        ),
                        child: const Center(
                          child: Text(
                            'Order Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'valera',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )));
}
