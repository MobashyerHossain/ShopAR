import 'package:ShopAR/constants.dart';
import 'package:flutter/material.dart';
import 'package:ShopAR/models/Category.dart';

class SubCategoryCard extends StatelessWidget {
  final Category category;
  final Function press;
  const SubCategoryCard({
    Key key,
    this.category,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                color: category.color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Image.asset(category.thumbnail),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              category.title,
              style: TextStyle(
                color: kTextLightColor,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
