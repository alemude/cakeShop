
import 'package:cakeshop/Screens/Pages/updatePassword.dart';
import 'package:cakeshop/Screens/Pages/updateProfile.dart';
import 'package:flutter/material.dart';
class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                      image: AssetImage("assets/images/user.png"),
                      fit: BoxFit.cover,
                    ))),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Alemu Derebe',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'alemuofficial@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UpdateProfile()));
                },
                child: const Row(
                  children: [
                    Icon(Icons.person_outlined,
                        size: 20, color: Colors.blue),
                    Text(
                      'Change Profile',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UpdatePassword()));
                },
                child: const Row(
                  children: [
                    Icon(Icons.lock,
                        size: 20, color: Colors.blue),
                    Text(
                      'Change Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
             const SizedBox(height: 24),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UpdateProfile()));
                },
                child: const Row(
                  children: [
                    Icon(Icons.support,
                        size: 20, color: Colors.blue),
                    Text(
                      'Contact us',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
             ],
          ),
        ),
      ),
    );
  }
}
