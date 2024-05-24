import 'package:flutter/material.dart';
import 'package:e_commerce_ui_1/itemPage/components/ItemTopBar.dart';
class Itemtop extends StatelessWidget {
  final String itemImage;
  final String title;
  const Itemtop({
    super.key,
    required this.itemImage,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 320,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(itemImage),
              fit:BoxFit.cover, 
              ),
          ),
        ),
        Container(
          height: 320,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.21),
                Colors.black.withOpacity(0.03),
              ],
              ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const  [
                  /// this is for top app bar.
                  Itemtopbar(),
                ],
              ),
              Expanded(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height:80),
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 5,
                        shadows: [
                          Shadow(
                            blurRadius: 2,
                            color:Colors.white.withOpacity(0.7),
                            offset: const Offset(0, 0),
                          )
                        ]
                      ),
                    )
                  ],
                  ) ,
                ),
            ],
          ),
        )
      ],
    );
  }
}