import 'package:cakeshop/Screens/Pages/account.dart';
import 'package:cakeshop/Screens/Pages/homePage.dart';
import 'package:cakeshop/Screens/Pages/setting.dart';
import 'package:flutter/material.dart';


class BottomPages extends StatelessWidget {
const BottomPages({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'versavvy',
	theme: ThemeData(
		primaryColor: Colors.white,
		splashColor: Colors.transparent,
		highlightColor: Colors.transparent,
		hoverColor: Colors.transparent,
	),
	debugShowCheckedModeBanner: false,
	home: const Pages(),
	);
}
}

class Pages extends StatefulWidget {
const Pages({Key? key}) : super(key: key);

@override
_PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
int pageIndex = 0;

final pages = [
	HomePage(),
	const Account(),
  const Settings(),
];

@override
Widget build(BuildContext context) {
	return Scaffold(
	backgroundColor: const Color(0xffC4DFCB),
 body: pages[pageIndex],
	bottomNavigationBar: buildMyNavBar(context),
	);
}

Container buildMyNavBar(BuildContext context) {
	return Container(
	height: 60,
	decoration: BoxDecoration(
		color: Theme.of(context).primaryColor,
		borderRadius: const BorderRadius.only(
		topLeft: Radius.circular(20),
		topRight: Radius.circular(20),
		),
	),
	child: Row(
		mainAxisAlignment: MainAxisAlignment.spaceAround,
		children: [
		Stack(
          children: [Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border:Border.all(
            color:Colors.black,
            width: 3,
            )
        ),
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
              setState(() {
                pageIndex = 0;
              });
              },
              icon: pageIndex == 0
                ? const Icon(
                  Icons.food_bank,
                  color: Colors.blue,
                  size: 35,
                )
                : const Icon(
                  Icons.food_bank,
                  color: Colors.black,
                  size: 35,
                ),
          ),
          ]
        ),
		Stack(
          children: [Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border:Border.all(
            color:Colors.black,
            width: 3,
            )
        ),
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
              setState(() {
                pageIndex = 1;
              });
              },
              icon: pageIndex == 1
                ? const Icon(
                  Icons.copy,
                  color: Colors.blue,
                  size: 35,
                )
                : const Icon(
                  Icons.copy,
                  color: Colors.black,
                  size: 35,
                ),
          ),
          ]
        ),
		Stack(
          children: [Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border:Border.all(
            color:Colors.black,
            width: 3,
            )
        ),
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
              setState(() {
                pageIndex = 2;
              });
              },
              icon: pageIndex == 2
                ? const Icon(
                  Icons.settings,
                  color: Colors.blue,
                  size: 35,
                )
                : const Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 35,
                ),
          ),
          ]
        ),
		],
	),
	);
}
}


