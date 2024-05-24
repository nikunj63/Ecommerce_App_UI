import 'package:e_commerce_ui_1/Data/content.dart';
import 'package:e_commerce_ui_1/ShopPage/components/Categories.dart';
import 'package:e_commerce_ui_1/ShopPage/components/CategoryTitle.dart';
import 'package:e_commerce_ui_1/ShopPage/components/shopWall.dart';
import 'package:flutter/material.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: ListView(
        children: const [
          /// this is for showing wall of shop page
          ShopWall(),

          ///this is for showing Category Title.
          Categorytitle(
            title: "Categories", 
            buttonText: "All"
            ),
            /// this is for showing category widget.
            Categories(
               height: 170,
              width: 140,  
               categories: Content.categories, 
               categoriesTitle: Content.categoriesTitle,
                image: "assets/images/category",
               ),
               /// this is for Showing Category title.
               Categorytitle(
                title: "Best Selling by Categories", 
                buttonText: "All",
                ),
                Categories(
                  height: 180,
                  width: 210, 
                   categories: Content.bestSell, 
                   categoriesTitle:Content.bestSellTitle,
                   image: "assets/images/bestsell",
                   ),
                   SizedBox(height: 50,)
        ],
      ),
    );
  }
}