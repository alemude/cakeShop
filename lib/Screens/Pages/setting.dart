import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(232, 214, 219, 221),
      body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            const Text("SETTINGS",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            const CircleAvatar(
              radius: 40,
              child: ClipOval(
                  child: Image(image: AssetImage("assets/images/logo.jpg"))),
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("versavvy",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                    height: 30,
                    width: 60,
                    child: Image(
                        image: AssetImage(
                      'assets/images/font1.jpg',
                    ))),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text("Payment Settings",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(238, 17, 17, 17),
                      )),
                ),
                Container(
                  height: 0.5,
                  color: Colors.black38,
                ),
                ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.payment),
                    title: const Text("Payment Options",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                        ))),
                Container(
                  height: 0.5,
                  color: Colors.black38,
                ),
                ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.bar_chart),
                    title: const Text("Payment History",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                        ))),
                Container(
                  height: 0.5,
                  color: Colors.black38,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text("Contact Details",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(238, 17, 17, 17),
                      )),
                ),
                Container(
                  height: 0.5,
                  color: Colors.black38,
                ),
                ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.email),
                    title: const Text("Email Address",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                        ))),
                Container(
                  height: 0.5,
                  color: Colors.black38,
                ),
                ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.phone),
                    title: const Text("Phone Address",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                        ))),
                Container(
                  height: 0.5,
                  color: Colors.black38,
                ),
                ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.business),
                    title: const Text("Residential Address",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                        ))),
                Container(
                  height: 0.5,
                  color: Colors.black38,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text("App Settings",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(238, 17, 17, 17),
                      )),
                ),
                Container(
                  height: 0.5,
                  color: Colors.black38,
                ),
                Container(
                  height: 0.5,
                  color: Colors.black38,
                ),
                ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.notifications),
                    title: const Text("Notification",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                        ))),
                Container(
                  height: 0.5,
                  color: Colors.black38,
                ),
              ],
            ),
          ])),
    );
  }
}
