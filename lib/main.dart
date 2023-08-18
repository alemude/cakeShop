import 'package:cakeshop/Provider/appState.dart';
import 'package:cakeshop/Screens/Pages/homePage.dart';
import 'package:cakeshop/Screens/Pages/onboarding.dart';
import 'package:cakeshop/Screens/buttomBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductsVM(),
        ),
      ],
      child: MaterialApp(
        title: 'State Management Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          hintColor: Colors.blueGrey[100],
          primaryColor: Colors.blue[200],
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        //home: ProductScreen(),
              //home:OnBoardingPage()
      //home:HomePage()
      //home: AddToCartPage(),
      initialRoute: '/home',
      routes: {
        // '/':(context) => ProductScreen(),
        // '/cart':(context) => CartScreen(),
        //'/home' : (context) =>HomePage(),
           '/home':(context)=>BottomPages(),
      },
      ),
    );
  }
}

