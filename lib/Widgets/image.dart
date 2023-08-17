 import 'package:flutter/material.dart';

buildImage(String imgPath2) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Container(
        height: 100,
        width: 175,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(imgPath2),
              fit: BoxFit.cover,
            )),
      ),
    );
  }