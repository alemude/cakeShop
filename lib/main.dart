import 'package:cakeshop/Provider/appState.dart';
import 'package:cakeshop/Screens/Pages/addToCart.dart';
import 'package:cakeshop/Screens/Pages/cartScreen.dart';
import 'package:cakeshop/Screens/Pages/homePage.dart';
import 'package:cakeshop/Screens/Pages/onboarding.dart';
import 'package:cakeshop/Screens/Pages/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>Cart(),
      child:     MaterialApp(
      debugShowCheckedModeBanner: false,
  
      //home:OnBoardingPage()
      //home:HomePage()
      //home: AddToCartPage(),
      initialRoute: '/',
      routes: {
        '/':(context) => ProductScreen(),
        '/cart':(context) => CartScreen(),
      },
    ),
      );
  }
}
