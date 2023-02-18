import 'package:flutter/material.dart';
import 'package:flutter_aula_1/screens/home.dart';


void main() {
   runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    home: Home(), // becomes the route named '/'
  ));
}
