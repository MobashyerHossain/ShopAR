import 'package:flutter/material.dart';
import 'package:ShopAR/constants.dart';
import 'package:ShopAR/screens/details/details_screen.dart';

import 'item_card.dart';

class SubCategoryBody extends StatelessWidget {
  final product;
  const SubCategoryBody({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: GridView.builder(
          itemCount: product.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => ItemCard(
            product: product[index],
            press: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  product: product[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
