import 'package:cakeshop/Provider/appState.dart';
import 'package:cakeshop/Screens/cart/cart.dart';
import 'package:cakeshop/Screens/cart/cartCounter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({Key? key, screenSize, image, itemName, price, quantity})
      : super(key: key);

  Size? screenSize;
  String? image, itemName, price, quantity;

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int count = 1;
  int _rating = 0;
  void _incrementCounter() {
    setState(() {
      count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      count--;
    });
  }

 void _setRatingAsOne() {
 setState( () {
 _rating = 1;
 });
 }
 void _setRatingAsTwo() {
 setState( () {
 _rating = 2;
 });
 }
 void _setRatingAsThree() {
 setState( () {
 _rating = 3;
 });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 150, 144, 144),
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 50,
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 0, right: 15, top: 8, bottom: 8),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        const Align(
                            alignment: Alignment.bottomCenter,
                            child: Icon(Icons.shopping_cart_rounded,
                                color: Colors.blue, size: 25)),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Consumer<ProductsVM>(
                            builder: (context, value, child) => CartCounter(
                              count: value.lst.length.toString(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width:10),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 110,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 16, 4, 83),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'LogIn',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'nunito',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 50,
                            width: 110,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 16, 4, 83),
                                    fontFamily: 'nunito',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.only(left: 15),
          shrinkWrap: true,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 45),
              child: SizedBox(
                child: Text(
                  'choise the cake that you want',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'nunito',
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Our specials',
              style: TextStyle(
                color: Color.fromARGB(255, 21, 21, 20),
                fontFamily: 'valera',
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 400,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    HomeSlider(
                        'assets/images/f8.jpg',
                        'Cake 001',
                        '1',
                        'This is the best teste cake that you have not purchase yet',
                        '2000 birr',
                        '$count',
                        false),
                    HomeSlider(
                        'assets/images/f6.jpg',
                        'Cake 002',
                        '2',
                        'This is the best teste cake that you have not purchase yet',
                        '1500 birr',
                        '$count',
                        false),
                    HomeSlider(
                        'assets/images/f10.jpg',
                        'Cake 003',
                        '1',
                        'This is the best teste cake that you have not purchase yet',
                        '1300 birr',
                        '$count',
                        false),
                    HomeSlider(
                        'assets/images/f5.jpg',
                        'Cake 004',
                        '1',
                        'This is the best teste cake that you have not purchase yet',
                        '1190 birr',
                        '$count',
                        false),
                    HomeSlider(
                        'assets/images/f7.jpg',
                        'Cake 005',
                        '1',
                        'This is the best teste cake that you have not purchase yet',
                        '1500 birr',
                        '$count',
                        false),
                    HomeSlider(
                        'assets/images/f2.jpg',
                        'Cake 006',
                        '1',
                        'This is the best teste cake that you have not purchase yet',
                        '1600 birr',
                        '$count',
                        false),
                    HomeSlider(
                        'assets/images/f1.jpg',
                        'Cake 007',
                        '1',
                        'This is the best teste cake that you have not purchase yet',
                        '1400 birr',
                        '$count',
                        false),
                    HomeSlider(
                        'assets/images/f8.jpg',
                        'Cake 008',
                        '1',
                        'This is the best teste cake that you have not purchase yet',
                        '1000 birr',
                        '$count',
                        false),
                    HomeSlider(
                        'assets/images/f9.jpg',
                        'Cake 009',
                        '1',
                        'This is the best teste cake that you have not purchase yet',
                        '900 birr',
                        '$count',
                        false),
                    HomeSlider(
                        'assets/images/f10.jpg',
                        'Cake 010',
                        '1',
                        'This is the best teste cake that you have not purchase yet',
                        '1200 birr',
                        '$count',
                        false),
                  ]),
            ),
          ],
        ));
  }

  HomeSlider(String image, String itemName, String quantity, String description,
      String price, String count, bool isFavourite) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SizedBox(
            height: 500,
            width: 220,
            child: ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
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
                          color: const Color.fromARGB(255, 252, 250, 250),
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
                                image: AssetImage(image),
                                fit: BoxFit.cover,
                              ),
                            ))),
                    Positioned(
                      top: 180,
                      left: 60,
                      child: Text(
                        itemName,
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: FloatingActionButton(
                                      backgroundColor:
                                          const Color.fromARGB(255, 26, 5, 83),
                                      onPressed: _decrementCounter,
                                      tooltip: 'Decrement',
                                      child: const Icon(Icons.remove),
                                      mini: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  quantity,
                                  style: const TextStyle(fontSize: 15),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: FloatingActionButton(
                                      onPressed: _incrementCounter,
                                      backgroundColor:
                                          const Color.fromARGB(255, 26, 5, 83),
                                      tooltip: 'Increment',
                                      child: const Icon(Icons.add),
                                      mini: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 250,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              description,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )),
                    Positioned(
                      top: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(15),
                            child: IconButton(
                              icon: (_rating >= 1
                                  ? const Icon(
                                      Icons.star,
                                      size: 20,
                                    )
                                  : const Icon(
                                      Icons.star_border,
                                      size: 20,
                                    )),
                              color: Colors.red[500],
                              onPressed: _setRatingAsOne,
                              iconSize: 20,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            child: IconButton(
                              icon: (_rating >= 2
                                  ? const Icon(
                                      Icons.star,
                                      size: 20,
                                    )
                                  : const Icon(
                                      Icons.star_border,
                                      size: 20,
                                    )),
                              color: Colors.red[500],
                              onPressed: _setRatingAsTwo,
                              iconSize: 20,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            child: IconButton(
                              icon: (_rating >= 3
                                  ? const Icon(
                                      Icons.star,
                                      size: 20,
                                    )
                                  : const Icon(
                                      Icons.star_border,
                                      size: 20,
                                    )),
                              color: Colors.red[500],
                              onPressed: _setRatingAsThree,
                              iconSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 350,
                      child: Consumer<ProductsVM>(
                        builder: (context, value, child) => InkWell(
                          onTap: () {
                            value.add(image, itemName, price, quantity);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                                alignment: Alignment.center,
                                height: screenSize.height * 0.04,
                                width: screenSize.width * 0.3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue),
                                child: const Center(
                                  child: Text(
                                    "Add to cart",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
              ],
            )));
  }
}
