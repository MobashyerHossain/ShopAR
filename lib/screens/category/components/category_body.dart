import 'package:flutter/material.dart';
import 'package:ShopAR/constants.dart';
import 'package:ShopAR/models/Category.dart';
import 'package:ShopAR/screens/category/components/subCategory_card.dart';
import 'package:ShopAR/screens/subs/subCategory_screen.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: GridView.builder(
          itemCount: categoryList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: .75,
          ),
          itemBuilder: (context, index) => SubCategoryCard(
            category: categoryList[index],
            press: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SubCatScreen(
                  category: categoryList[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
