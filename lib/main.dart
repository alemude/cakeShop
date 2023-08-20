import 'package:cakeshop/Provider/appState.dart';
import 'package:cakeshop/Screens/Pages/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductsVM(),
        ),
      ],
      child: MaterialApp(
        title: 'versavvy',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          hintColor: Colors.blueGrey[100],
          primaryColor: Colors.blue[200],
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      initialRoute: '/home',
      routes: {
           '/home':(context)=>OnBoaringPage(),
      },
      ),
    );
  }
}

