import 'package:flutter/material.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: const IconThemeData(color: Colors.blue),
      ),
      body: const Center(
          child: Text(
        'Comming Soon',
        style: TextStyle(
          fontSize: 30,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
