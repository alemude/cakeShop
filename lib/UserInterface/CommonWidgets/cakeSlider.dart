import 'package:cakeshop/UserInterface/Pages/addToCart.dart';
import 'package:flutter/material.dart';

cakeSlider(String imgPath, String name,String price, bool isFavourite) {
    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SizedBox(
            height: 200,
            width: 220,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 330,
                    ),
                    Positioned(
                      top: 20,
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 10,
                        right: 10,
                        ),
                        height: 260,
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
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                            ),
                            Positioned(
                              top: 220,
                              child: Container(
                                padding: EdgeInsets.only(left: 10,right: 10),
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
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Icon(
                                      Icons.favorite,
                                      color:
                                          isFavourite ? Colors.red : Colors.grey,
                                    ),
                                  ),
                                ],
                                                          ),
                              ),
                              )
                  ],
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //  MaterialPageRoute(builder: (context) => const AddToCartPage()));
                  },
                  child: Container(
                    height: 50,
                    width: 225,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(255, 31, 20, 91),
                    ),
                    child: const Center(
                      child: Text(
                        'Purchase Now',
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
              ],
            )));
  }