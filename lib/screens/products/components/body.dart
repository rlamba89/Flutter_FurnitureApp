import 'package:flutter/material.dart';
import 'package:furnitureapp/constants.dart';
import 'package:furnitureapp/models/product.dart';
import 'package:furnitureapp/screens/products/components/product_card.dart';
import 'package:furnitureapp/screens/products/components/search_box.dart';
import 'package:furnitureapp/screens/products/components/search_chips.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(),
          SearchChips(),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: kBackgroundColor,
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    product: products[index],
                    index: index,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
