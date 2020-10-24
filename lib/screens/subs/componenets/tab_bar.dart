import 'package:flutter/material.dart';
import 'package:ShopAR/constants.dart';
import 'package:ShopAR/models/SubCategory.dart';

class TabBarIndicator extends StatelessWidget {
  final SubCategory subCategory;

  TabBarIndicator({
    Key key,
    this.subCategory,
  }) : super(key: key);

  List<SubCategory> getSubCatList() {
    return subCategory.getCategory().getSubCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: getSubCatList().length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            getSubCatList()[index].title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: getSubCatList().indexOf(this.subCategory) == index
                  ? kTextColor
                  : kTextLightColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
            height: 2,
            width: 30,
            color: getSubCatList().indexOf(this.subCategory) == index
                ? Colors.black
                : Colors.transparent,
          )
        ],
      ),
    );
  }
}
