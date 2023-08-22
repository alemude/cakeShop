import 'package:cakeshop/Screens/Pages/Logout.dart';
import 'package:cakeshop/Screens/Pages/Profile.dart';
import 'package:cakeshop/Screens/Pages/updatePassword.dart';
import 'package:cakeshop/Screens/Pages/updateProfile.dart';
import 'package:flutter/material.dart';

class SliderAcount extends StatefulWidget {
  const SliderAcount({super.key, required this.title});

  final String title;

  @override
  State<SliderAcount> createState() => _SliderAcountState();
}

class _SliderAcountState extends State<SliderAcount> {
  int _selectedIndex = 0;
  static const List<Widget> widgetOptions = <Widget>[
//Profile(),
//UpdatePassword(),
//UpdateProfile(),
LogOut(),
LogOut(),
LogOut(),
LogOut(),

 
];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Profile'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Change profile'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
                        ListTile(
              title: const Text('Change password'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Log out'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
