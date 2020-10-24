import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ShopAR/constants.dart';
import 'package:ShopAR/models/Category.dart';
import 'package:ShopAR/screens/category/components/main_menu.dart';
import 'package:ShopAR/screens/subCategory/componenets/subCategory_body.dart';

class SubCatScreen extends StatefulWidget {
  final Category category;

  const SubCatScreen({Key key, this.category}) : super(key: key);
  @override
  _SubCatScreenState createState() => _SubCatScreenState();
}

class _SubCatScreenState extends State<SubCatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: MainMenu(),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Text(
                widget.category.title,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SubCategoryBody(
              subCatList: widget.category.getSubCategories(),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: kTextColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
