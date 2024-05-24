import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_ui_1/Data/content.dart';
import 'package:e_commerce_ui_1/itemPage/itemPage.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final double width;
  final double height;
  final String image;
  final List<String> categories;
  final List<String> categoriesTitle;
  const Categories(
    {super.key,
     required this.width,
      required this.height, 
      required this.image, 
      required this.categories,
      required this.categoriesTitle,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categories.length,
            (index) => FadeInDown(
              child: GestureDetector(
                onTap: () {
                  /// this is for navigating item page.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        List<String> temp;
                        List<String> temptitle;
                        String handler;
                        if (height > 170) {
                          temp = Content.bestSell;
                          temptitle = Content.bestSellTitle;  // Assign appropriate titles here
                          handler = "bestsell";
                        } else {
                          temp = Content.categories;
                          temptitle = Content.categoriesTitle;
                          handler = "category";
                        }
                        return Itempage(
                          imageUrl: "$image$index.jpg",
                          productList: temp,
                          productTitle: temptitle,
                          title: categoriesTitle[index],
                          handler: handler,
                        );
                      }),
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 25),
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "$image$index.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 25),
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [
                            Colors.black.withOpacity(0.5),
                            Colors.black.withOpacity(0.35),
                            Colors.black.withOpacity(0.15),
                            Colors.black.withOpacity(0.001),
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12, left: 10),
                            child: FadeInDown(
                              delay: const Duration(milliseconds: 1200),
                              child: Text(
                                categoriesTitle[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 2,
                                      color: Colors.white.withOpacity(0.7),
                                      offset: const Offset(0, 0),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
