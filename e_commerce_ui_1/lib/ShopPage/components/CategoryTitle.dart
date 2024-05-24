import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Categorytitle extends StatelessWidget {
  final String title;
  final String buttonText;
  const Categorytitle({
    super.key,
    required this.title,
    required this.buttonText,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FadeInLeft(
              child:Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight:FontWeight.w800,
                  fontSize: 22,
                  shadows: [
                    Shadow(
                      blurRadius: 2,
                      color: Colors.black,
                      offset: Offset(0, 0),
                    )
                  ]
                ),
              ), 
            ),
            FadeInRight(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),  
              ),
              ),
          ],
        ),
        );
    
  }
}