import 'package:flutter/material.dart';

import 'package:ShopAR/models/SubCategory.dart';
import 'package:ShopAR/screens/subCategory/componenets/subCategory_tab.dart';

class SubCategoryBody extends StatefulWidget {
  final List<SubCategory> subCatList;
  const SubCategoryBody({
    Key key,
    this.subCatList,
  }) : super(key: key);

  @override
  _SubCategoryBodyState createState() => _SubCategoryBodyState();
}

class _SubCategoryBodyState extends State<SubCategoryBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: DefaultTabController(
          length: widget.subCatList.length,
          child: TabBarView(
            children: [
              SubCategoryTab(
                subCategory: widget.subCatList[0],
              ),
              SubCategoryTab(
                subCategory: widget.subCatList[1],
              ),
              SubCategoryTab(
                subCategory: widget.subCatList[2],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
