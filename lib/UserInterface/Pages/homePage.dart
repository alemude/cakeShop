import 'package:cakeshop/UserInterface/CommonWidgets/cakeSlider.dart';
import 'package:cakeshop/UserInterface/CommonWidgets/image.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 150, 144, 144),
              appBar: AppBar(
          title: const Text('Cake Shop',style: 
          TextStyle(
            fontSize:25,
            fontWeight: FontWeight.bold
          ),),

          backgroundColor: Color.fromARGB(255, 69, 46, 131),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      body:ListView(
          padding: const EdgeInsets.only(left: 15),
          shrinkWrap: true,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  'Welcome,Alemu',
                  style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 18, 17, 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
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
                    cakeSlider(
                        'assets/images/f8.jpg',
                        'Cake 001',
                        '2000 birr',
                        false
                        ),
                    cakeSlider(
                        'assets/images/f6.jpg',
                        'Cake 002',
                        '1500 birr',
                        false),
                    cakeSlider(
                        'assets/images/f10.jpg',
                        'Cake 003',
                        '1300 birr',
                        false),
                    cakeSlider(
                        'assets/images/f5.jpg',
                        'Cake 004',
                        '1190 birr',
                        false),
                    cakeSlider(
                        'assets/images/f7.jpg',
                        'Cake 005',
                        '1500 birr',
                        false),
                                            cakeSlider(
                        'assets/images/f2.jpg',
                        'Cake 006',
                        '1600 birr',
                        false),
                                            cakeSlider(
                        'assets/images/f1.jpg',
                        'Cake 007',
                        '1400 birr',
                        false),
                                            cakeSlider(
                        'assets/images/f8.jpg',
                        'Cake 008',
                        '1000 birr',
                        false),
                                            cakeSlider(
                        'assets/images/f9.jpg',
                        'Cake 009',
                        '900 birr',
                        false),
                                            cakeSlider(
                        'assets/images/f10.jpg',
                        'Cake 010',
                        '1200 birr',
                        false),
                  ]),
            ),
            const SizedBox(
              height: 14,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Explore nearby',
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
            Container(
              height: 200,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    buildImage('assets/images/c4.jpg'),
                    buildImage('assets/images/c5.jpg'),
                    buildImage('assets/images/c25.jpg'),
                    buildImage('assets/images/c7.jpg'),
                    buildImage('assets/images/c8.jpg'),
                    buildImage('assets/images/c10.jpg'),
                    buildImage('assets/images/c11.jpg'),
                    buildImage('assets/images/c12.jpg'),
                    buildImage('assets/images/c15.jpg'),
                    buildImage('assets/images/c17.jpg'),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ));
   
  
  }
}