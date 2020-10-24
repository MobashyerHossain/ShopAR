import 'package:ShopAR/models/Category.dart';
import 'package:ShopAR/models/Product.dart';

class SubCategory {
  final String title;
  final int id, categoryId;
  SubCategory({
    this.id,
    this.categoryId,
    this.title,
  });

  Category getCategory() {
    Category category;
    category =
        categoryList.firstWhere((element) => (element.id == this.categoryId));
    return category;
  }

  List<Product> getProducts() {
    List<Product> products;
    products = productList
        .where((element) => (element.subCategoryID == this.id))
        .toList();
    return products;
  }
}

// Sample Products
List<SubCategory> subCategoryList = [
  // glasses subcategories
  SubCategory(
    id: 1,
    categoryId: 1,
    title: "Spectacles",
  ),
  SubCategory(
    id: 2,
    categoryId: 1,
    title: "Sunglasses",
  ),
  SubCategory(
    id: 3,
    categoryId: 1,
    title: "Goggles",
  ),

  // cap subcategories
  SubCategory(
    id: 4,
    categoryId: 2,
    title: "Baseball Cap",
  ),
  SubCategory(
    id: 5,
    categoryId: 2,
    title: "Knit Cap",
  ),
  SubCategory(
    id: 6,
    categoryId: 2,
    title: "Top Cap",
  ),

  // necktie subcategories
  SubCategory(
    id: 7,
    categoryId: 3,
    title: "Windsor Tie",
  ),
  SubCategory(
    id: 8,
    categoryId: 3,
    title: "Bow Tie",
  ),
  SubCategory(
    id: 9,
    categoryId: 3,
    title: "String Tie",
  ),

  // necklace subcategories
  SubCategory(
    id: 10,
    categoryId: 4,
    title: "Bib Style",
  ),
  SubCategory(
    id: 11,
    categoryId: 4,
    title: "Chain Style",
  ),
  SubCategory(
    id: 12,
    categoryId: 4,
    title: "Indian Style",
  ),

  // earings subcategories
  SubCategory(
    id: 13,
    categoryId: 5,
    title: "Teardrop",
  ),
  SubCategory(
    id: 14,
    categoryId: 5,
    title: "Chandelier",
  ),
  SubCategory(
    id: 15,
    categoryId: 5,
    title: "Dangle",
  ),
];
