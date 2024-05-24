import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_ui_1/ShopPage/ShopPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Startbutton extends StatelessWidget {
  const Startbutton({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return FadeInDown(
      delay: const Duration(milliseconds: 1300),
      child: GestureDetector(
        onTap: ((){
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: ((context)=>const Shoppage ()),
            ),
            (route)=>false);
        }),
        child: Container(
          margin: const EdgeInsets.only(bottom:30),
          width: size.width,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Center(
            child: Text(
              "Get start",
              style:TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      );
  }
}