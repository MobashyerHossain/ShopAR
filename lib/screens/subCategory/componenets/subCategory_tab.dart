import 'package:flutter/material.dart';
import 'package:ShopAR/constants.dart';
import 'package:ShopAR/models/SubCategory.dart';
import 'package:ShopAR/screens/details/details_screen.dart';
import 'package:ShopAR/screens/subCategory/componenets/product_card.dart';
import 'package:ShopAR/screens/subCategory/componenets/tab_bar.dart';

class SubCategoryTab extends StatelessWidget {
  final SubCategory subCategory;
  const SubCategoryTab({
    Key key,
    this.subCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBarIndicator(
          subCategory: this.subCategory,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: subCategory.getProducts().length > 0
                ? GridView.builder(
                    itemCount: subCategory.getProducts().length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kDefaultPaddin,
                      crossAxisSpacing: kDefaultPaddin,
                      childAspectRatio: .75,
                    ),
                    itemBuilder: (context, index) => ProductCard(
                      product: subCategory.getProducts()[index],
                      press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: subCategory.getProducts()[index],
                          ),
                        ),
                      ),
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sorry!!!",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${subCategory.title}'s Has Not Been Added Yet...",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
