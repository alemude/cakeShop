import 'package:cakeshop/Screens/Pages/Logout.dart';
import 'package:cakeshop/Screens/Pages/Profile.dart';
import 'package:cakeshop/Screens/Pages/updatePassword.dart';
import 'package:cakeshop/Screens/Pages/updateProfile.dart';
import 'package:flutter/material.dart';

class SliderAcount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme:const IconThemeData(color: Colors.blue),
      ),
      drawer: Drawer(   
        backgroundColor: Theme.of(context).primaryColorDark,
        child: ListView(
          children: [
            buildHeader(
                urlImage: 'assets/images/user.png',
                name: 'Alemu',
                email: 'alemuofficial@gmail.com',
                onClicked: () {
                  Navigator.pushNamed(context, '/SliderAcount');
                }),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  const Divider(color: Colors.white70),
                  const SizedBox(
                    height: 10,
                  ),
                  buildMenuItem(
                      text: 'Profile',
                      icon: Icons.person,
                      onClicked: () {
                        selectedItem(context, 0);
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  
                  Divider(color: Colors.grey[900], height: 20),
                  const SizedBox(height: 12),
                  buildMenuItem(
                      text: 'Change profile',
                      icon: Icons.person_add_alt,
                      onClicked: () {
                       selectedItem(context, 1);
                      }),
                  buildMenuItem(
                      text: 'Change Password',
                      icon: Icons.lock,
                      onClicked: () {
                        selectedItem(context, 2);
                      }),
                  buildMenuItem(
                      text: 'Log Out',
                      icon: Icons.logout,
                      onClicked: () {
                        selectedItem(context, 3);
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    body: const Profile(),
    );
  }
}

Widget buildHeader({
  required String urlImage,
  required String name,
  required String email,
  required VoidCallback onClicked,
}) =>
    DrawerHeader(
      decoration:const BoxDecoration(
        color:Color.fromARGB(197, 172, 168, 168) ),
      child: InkWell(
        onTap: onClicked,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: AssetImage(urlImage)),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              const Spacer(),
              
            ],
          ),
        ),
      ),
    );

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  const color = Colors.black;
  const hoverColor = Colors.white70;

  return ListTile(
    leading:
        Icon(icon, color: Colors.blue, size: 20, weight: Checkbox.width),
    title: Text(text,
        style: const TextStyle(
          color: color,
          letterSpacing: 2.0,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        )),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>  SliderAcount(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => UpdateProfile(),
      ));
      case 2:
      Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const UpdatePassword()),
          );
          case 3:
          Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const LogOut(),
      ));
      
      break;
  }
}
