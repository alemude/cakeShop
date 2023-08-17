import 'package:cakeshop/Widgets/homeSlide.dart';
import 'package:cakeshop/Widgets/image.dart';
import 'package:cakeshop/Screens/Pages/addToCart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 150, 144, 144),
        appBar: AppBar(
          title: const Text(
            'Cake Shop',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromARGB(255, 69, 46, 131),
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
        body: ListView(
          padding: const EdgeInsets.only(left: 15),
          shrinkWrap: true,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Welcome,Alemu',
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 18, 17, 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/f9.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 17,
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Our specials',
                  style: TextStyle(
                    color: Color.fromARGB(255, 21, 21, 20),
                    fontFamily: 'valera',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    'See all',
                    style: TextStyle(
                      color: Color.fromARGB(255, 59, 58, 58),
                      fontFamily: 'nunito',
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                )
              ],
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
                        'This the the best teste cake that you have not purchase yet',
                        '2000 birr',
                        '$_counter',
                        false),
                    HomeSlider(
                        'assets/images/f6.jpg',
                        'Cake 002',
                        '2',
                        'This the the best teste cake that you have not purchase yet',
                        '1500 birr',
                        '$_counter',
                        false),
                    HomeSlider(
                        'assets/images/f10.jpg',
                        'Cake 003',
                        '1',
                        'This the the best teste cake that you have not purchase yet',
                        '1300 birr',
                        '$_counter',
                        false),
                    HomeSlider(
                        'assets/images/f5.jpg',
                        'Cake 004',
                        '1',
                        'This the the best teste cake that you have not purchase yet',
                        '1190 birr',
                        '$_counter',
                        false),
                    HomeSlider(
                        'assets/images/f7.jpg',
                        'Cake 005',
                        '1',
                        'This the the best teste cake that you have not purchase yet',
                        '1500 birr',
                        '$_counter',
                        false),
                    HomeSlider(
                        'assets/images/f2.jpg',
                        'Cake 006',
                        '1',
                        'This the the best teste cake that you have not purchase yet',
                        '1600 birr',
                        '$_counter',
                        false),
                    HomeSlider(
                        'assets/images/f1.jpg',
                        'Cake 007',
                        '1',
                        'This the the best teste cake that you have not purchase yet',
                        '1400 birr',
                        '$_counter',
                        false),
                    HomeSlider(
                        'assets/images/f8.jpg',
                        'Cake 008',
                        '1',
                        'This the the best teste cake that you have not purchase yet',
                        '1000 birr',
                        '$_counter',
                        false),
                    HomeSlider(
                        'assets/images/f9.jpg',
                        'Cake 009',
                        '1',
                        'This the the best teste cake that you have not purchase yet',
                        '900 birr',
                        '$_counter',
                        false),
                    HomeSlider(
                        'assets/images/f10.jpg',
                        'Cake 010',
                        '1',
                        'This the the best teste cake that you have not purchase yet',
                        '1200 birr',
                        '$_counter',
                        false),
                  ]),
            ),
          ],
        ));
  }

  HomeSlider(String imgPath, String name, String quantity, String description,
      String price, String count, bool isFavourite) {
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: FloatingActionButton(
                                      backgroundColor:
                                          Color.fromARGB(255, 26, 5, 83),
                                      onPressed: _decrementCounter,
                                      tooltip: 'Decrement',
                                      child: Icon(Icons.remove),
                                      mini: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                ),
                                const SizedBox(
                                  width:15,
                                ),
                                Text(
                                  count,
                                  style: const TextStyle(fontSize: 15),
                                ),
                                  const SizedBox(
                                  width:15,
                                ),
                                SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: FloatingActionButton(
                                      onPressed: _incrementCounter,
                                      backgroundColor:
                                          Color.fromARGB(255, 26, 5, 83),
                                      tooltip: 'Increment',
                                      child: Icon(Icons.add),
                                      mini: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 250,
                        child: SizedBox(
                          width: 200,
                          child: Text(
                            description,
                            style: const TextStyle(
                              fontSize: 12,
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
                            padding: EdgeInsets.only(left: 23, right: 23),
                            child: Icon(
                              Icons.star_border,
                              color: Color.fromARGB(255, 218, 171, 19),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 23, right: 23),
                            child: Icon(
                              Icons.star_border,
                              color: Color.fromARGB(255, 218, 171, 19),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 23, right: 23),
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
                          Navigator.push(context,
                           MaterialPageRoute(builder: (context) => const AddToCartPage()));
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
}
