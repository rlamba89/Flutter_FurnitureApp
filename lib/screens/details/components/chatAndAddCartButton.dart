import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ChatAndAddCartButton extends StatelessWidget {
  const ChatAndAddCartButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color(0xFFFCBF1E),
        ),
        margin: EdgeInsets.all(kDefaultPadding),
        width: size.width - 90,
        //height: 60,
        padding: EdgeInsets.all(kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SvgPicture.asset(
              "assets/icons/chat.svg",
              //height: 20,
            ),
            SizedBox(
              width: kDefaultPadding / 2,
            ),
            Text(
              'Chat',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Spacer(),
            Text(
              'Add to cart',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: kDefaultPadding / 2,
            ),
            SvgPicture.asset(
              "assets/icons/shopping-bag.svg",
             // height: 20,
            ),
          ],
        ));
  }
}
