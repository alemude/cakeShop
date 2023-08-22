
// // import 'package:cakeshop/Screens/Pages/updatePassword.dart';
// // import 'package:cakeshop/Screens/Pages/updateProfile.dart';
// // import 'package:cakeshop/Widgets/sliderAcount.dart';
// // import 'package:flutter/material.dart';

// // class SliderAcount extends StatefulWidget {
// //   const SliderAcount({super.key});
// //   @override
// //   State<SliderAcount> createState() => _SliderAcountState();
// // }

// // class _SliderAcountState extends State<SliderAcount> {
// //   int _selectedIndex = 0;
// //   static const TextStyle optionStyle =
// //       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
// //   static const List<Widget> _widgetOptions = <Widget>[
// // InkWell(

// // ),
// //     Text(
// //       'Index 1: Change Profile',
// //       style: optionStyle,
// //     ),
// //     Text(
// //       'Index 2: Change Password',
// //       style: optionStyle,
// //     ),
// //         Text(
// //       'Index 3: Log out',
// //       style: optionStyle,
// //     ),
    
// //   ];

// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: _widgetOptions[_selectedIndex],
// //       ),
// //       drawer: Drawer(
// //         child: ListView(
// //           padding: EdgeInsets.zero,
// //           children: [
// //             DrawerHeader(
// //               decoration: BoxDecoration(
// //                 color: Colors.blue,
// //               ),
// //               child:Padding(
// //                 padding: EdgeInsets.all(10),
// //                 child:              Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                 crossAxisAlignment: CrossAxisAlignment.center,
// //                 children: [
// //                   CircleAvatar(
// //                     radius: 50,
// //                     child:ClipOval(child: Image.asset('assets/images/user.png'))
// //                     ),
// //                   const Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     mainAxisAlignment: MainAxisAlignment.start,
// //                     children: [
// //                       Text(
// //                         'Alemu Derebe',
// //                         style: TextStyle(
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.bold,
// //                           color: Colors.black,
// //                         ),
// //                       ),
// //                       Text(
// //                         'alemuofficial@gmail.com',
// //                         style: TextStyle(
// //                           fontSize: 16,
// //                           fontWeight: FontWeight.bold,
// //                           color: Colors.black38,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //               ),
// //             ),
// //             ListTile(
// //               title: const Text('Profile'),
// //               selected: _selectedIndex == 0,
// //               onTap: () {
// //                 // Update the state of the app
// //                 _onItemTapped(0);
// //                 // Then close the drawer
// //                 Navigator.pop(context);
// //               },
// //             ),
// //             ListTile(
// //               title: const Text('Change Profile'),
// //               selected: _selectedIndex == 1,
// //               onTap: () {
// //                 // Update the state of the app
// //                 _onItemTapped(1);
// //                 // Then close the drawer
// //                 Navigator.pop(context);
// //               },
// //             ),
// //             ListTile(
// //               title: const Text('Change Password'),
// //               selected: _selectedIndex == 2,
// //               onTap: () {
// //                 // Update the state of the app
// //                 _onItemTapped(2);
// //                 // Then close the drawer
// //                 Navigator.pop(context);
// //               },
// //             ),
// //                         ListTile(
// //               title: const Text('Log out'),
// //               selected: _selectedIndex == 2,
// //               onTap: () {
// //                 // Update the state of the app
// //                 _onItemTapped(2);
// //                 // Then close the drawer
// //                 Navigator.pop(context);
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(widget.title)),
//       body: Center(
//         child: _widgetOptions[_selectedIndex],
//       ),
//       drawer: Drawer(
//         // Add a ListView to the drawer. This ensures the user can scroll
//         // through the options in the drawer if there isn't enough vertical
//         // space to fit everything.
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text('Drawer Header'),
//             ),
//             ListTile(
//               title: const Text('Home'),
//               selected: _selectedIndex == 0,
//               onTap: () {
//                 // Update the state of the app
//                 _onItemTapped(0);
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: const Text('Business'),
//               selected: _selectedIndex == 1,
//               onTap: () {
//                 // Update the state of the app
//                 _onItemTapped(1);
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: const Text('School'),
//               selected: _selectedIndex == 2,
//               onTap: () {
//                 // Update the state of the app
//                 _onItemTapped(2);
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

