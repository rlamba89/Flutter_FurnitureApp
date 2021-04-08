import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchChips extends StatefulWidget {
  @override
  _SearchChipsState createState() => _SearchChipsState();
}

class _SearchChipsState extends State<SearchChips> {
  int selectedChipIndex;

  List categories = ['All', 'Sofa', 'Park bench', 'Armchair', 'Diwan', 'Bed'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: kDefaultPadding / 2),
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedChipIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.only(
              left: 7,
              right: index == categories.length - 1 ? kDefaultPadding : 0,
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding / 4, // 5 top and bottom
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                              ),
            ),
            decoration: BoxDecoration(
              color: index == selectedChipIndex
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
            ),
          ),
        ),
      ),
    );
  }
}
