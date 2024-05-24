import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animate_do/animate_do.dart';

class LogintopTitles extends StatelessWidget {
  const LogintopTitles( {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInDown(
          child: Row(
            children:const [
              Text(
                "Brand New",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  letterSpacing: 2,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        FadeInDown(
          child:Row(
            children: [
              Text(
                "Perspective",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  letterSpacing: 2,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        FadeInDown(
          child:Row(
            children: [
              Text(
                "Let's start with our collection",
                style: TextStyle(
                  color:Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}