import 'package:e_commerce_ui_1/ShopPage/components/CategoryTitle.dart';
import 'package:e_commerce_ui_1/itemPage/components/ItemTop.dart';
import 'package:e_commerce_ui_1/itemPage/components/newProducts.dart';
import 'package:flutter/material.dart';
class Itempage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final List<String> productList;
  final List<String> productTitle;
  final String handler;
  const Itempage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.productList,
    required this.productTitle,
    required this.handler,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Itemtop(itemImage:imageUrl,
           title: title
           ),
           const Categorytitle(title:"New Product" , buttonText:"View More>"),
           Newproducts(
            newItems: productList, 
            newItemsTitle: productTitle, 
            handler: handler
            )
        ],
      ),
    );
  }
}