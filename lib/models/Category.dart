import 'package:flutter/material.dart';
import 'package:ShopAR/constants.dart';
import 'package:ShopAR/models/SubCategory.dart';

class Category {
  final String title, thumbnail;
  final int id;
  final bool hasColor, hasSize;
  final Color color;
  Category({
    this.hasColor,
    this.hasSize,
    this.id,
    this.title,
    this.thumbnail,
    this.color,
  });

  List<SubCategory> getSubCategories() {
    List<SubCategory> subCategories;
    subCategories = subCategoryList
        .where((element) => (element.categoryId == this.id))
        .toList();
    return subCategories;
  }
}

// Sample Products
List<Category> categoryList = [
  Category(
    id: 1,
    title: "Glasses",
    thumbnail: "assets/images/category_thumbnails/glasses.png",
    color: getTileColor(),
    hasColor: true,
    hasSize: true,
  ),
  Category(
    id: 2,
    title: "Cap",
    thumbnail: "assets/images/category_thumbnails/cap.png",
    color: getTileColor(),
    hasColor: false,
    hasSize: true,
  ),
  Category(
    id: 3,
    title: "NeckTie",
    thumbnail: "assets/images/category_thumbnails/necktie.png",
    color: getTileColor(),
    hasColor: false,
    hasSize: true,
  ),
  Category(
    id: 4,
    title: "Necklace",
    thumbnail: "assets/images/category_thumbnails/necklace.png",
    color: getTileColor(),
    hasColor: false,
    hasSize: false,
  ),
  Category(
    id: 5,
    title: "Earings",
    thumbnail: "assets/images/category_thumbnails/earing.png",
    color: getTileColor(),
    hasColor: false,
    hasSize: true,
  ),
];
