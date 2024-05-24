import 'package:e_commerce_ui_1/splashPage/HomePage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage() ,
    );
  }
}