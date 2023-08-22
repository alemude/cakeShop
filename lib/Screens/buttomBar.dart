
import 'package:cakeshop/Screens/Pages/homePage.dart';
import 'package:cakeshop/Screens/Pages/setting.dart';
import 'package:cakeshop/Widgets/sliderAcount.dart';
import 'package:flutter/material.dart';

class BottomPages extends StatefulWidget {
const BottomPages({Key? key}) : super(key: key);

@override
_BottomPagesState createState() => _BottomPagesState();
}
class _BottomPagesState extends State<BottomPages> {
int pageIndex = 0;
final pages = [
	HomePage(),
	const SliderAcount(title: 'Manage Account',),
  const Settings(),
];
@override
Widget build(BuildContext context) {
	return Scaffold(
	backgroundColor: Theme.of(context).primaryColorLight,
 body: pages[pageIndex],
	bottomNavigationBar: buildMyNavBar(context),
	);
}
Container buildMyNavBar(BuildContext context) {
	return Container(
	height: 60,
	decoration: BoxDecoration(
		color: Theme.of(context).primaryColorLight,
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


