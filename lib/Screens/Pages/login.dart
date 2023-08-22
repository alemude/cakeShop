import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 0.6,
            color: Colors.black,
          ),
          const CircleAvatar(
            child: Icon(Icons.person),
          ),
          const Positioned(
              child: Column(
            children: [],
          ))
        ],
      ),
    );
  }
}
