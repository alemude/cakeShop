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
	theme: ThemeData(
		primaryColor: Color.fromARGB(197, 172, 168, 168),
    primaryColorLight: Colors.white,
   primaryColorDark: const Color.fromARGB(255, 7, 101, 179),

    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 17, fontStyle: FontStyle.normal),
      bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    ),
	),
	debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
           '/':(context)=>OnBoaringPage(),
      },
      ),
    );
  }
}

