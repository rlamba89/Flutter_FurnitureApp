import 'package:flutter/material.dart';
import 'package:furnitureapp/models/product.dart';
import 'package:furnitureapp/screens/details/components/productImage.dart';

import '../../../constants.dart';
import 'chatAndAddCartButton.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: kBackgroundColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ProductImage(size: size, product: product),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: kDefaultPadding / 2),
                          child: Text(
                            product.title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Text(
                          "£${product.price}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: kSecondaryColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: kDefaultPadding / 2),
                          child: Text(
                            product.description,
                            style: TextStyle(color: kTextLightColor),
                          ),
                        ),
                        SizedBox(height: kDefaultPadding),
                      ],
                    ),
                  ),
                ],
              )),
        ),
        ChatAndAddCartButton(size: size)
      ],
    );
  }
}
