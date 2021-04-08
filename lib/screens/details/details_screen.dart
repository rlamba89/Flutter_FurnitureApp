import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furnitureapp/models/product.dart';

import '../../constants.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  DetailsScreen({this.product});

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      centerTitle: false,
      title: Text(
        'BACK',
        style: Theme.of(context).textTheme.bodyText2,
      ),
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart_with_item.svg"),
          color: kSecondaryColor,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }
}

