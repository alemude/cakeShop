import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 100,
              child: ClipOval(child: Image.asset('assets/images/user.png'))),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                subtitle: Text('Alemu Derebe',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
                subtitle: Text(
                  'alemuofficial@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  'Phone',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
                subtitle: Text(
                  '+251922818038',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}