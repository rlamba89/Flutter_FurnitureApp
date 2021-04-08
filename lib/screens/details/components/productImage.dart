import 'package:flutter/material.dart';
import 'package:furnitureapp/models/product.dart';

import '../../../constants.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key key,
    @required this.size,
    @required this.product,
  }) : super(key: key);

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: size.height * 0.35,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: size.height * 0.35,
              width: size.width * 0.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
            Hero(
              tag: product.id,
              child: Image.asset(
                product.image,
                height: size.height * 0.4,
                width: size.width * 0.55,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
