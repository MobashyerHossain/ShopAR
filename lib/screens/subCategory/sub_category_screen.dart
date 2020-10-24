// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:ShopAR/constants.dart';
// import 'package:ShopAR/models/Category.dart';
// import 'package:ShopAR/models/Product.dart';
// import 'package:ShopAR/screens/subCategory/components/sub_category_indicator.dart';
// import 'package:ShopAR/screens/subCategory/components/sub_category_body.dart';

// class SubCategoryScreen extends StatefulWidget {
//   final Category categoryChosen;

//   const SubCategoryScreen({Key key, this.categoryChosen}) : super(key: key);

//   @override
//   _SubCategoryScreenState createState() => _SubCategoryScreenState();
// }

// class _SubCategoryScreenState extends State<SubCategoryScreen> {
//   PageController pageController = PageController(
//     initialPage: 0,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(),
//       body: Container(
//         padding: EdgeInsets.only(top: 10),
//         child: PageView(
//           pageSnapping: true,
//           controller: pageController,
//           children: [
//             Page(
//               content: SubCategoryBody(product: spectacles),
//               category: "${widget.categoryChosen.title}",
//               index: 0,
//             ),
//             Page(
//               content: SubCategoryBody(product: sunglasses),
//               category: "Glasses",
//               index: 1,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   AppBar buildAppBar() {
//     return AppBar(
//       backgroundColor: Colors.white,
//       elevation: 0,
//       leading: IconButton(
//         icon: SvgPicture.asset(
//           "assets/icons/back.svg",
//           color: kTextColor,
//         ),
//         onPressed: () => Navigator.pop(context),
//       ),
//       actions: <Widget>[
//         IconButton(
//           icon: SvgPicture.asset(
//             "assets/icons/search.svg",
//             color: kTextColor,
//           ),
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: SvgPicture.asset(
//             "assets/icons/cart.svg",
//             color: kTextColor,
//           ),
//           onPressed: () {},
//         ),
//         SizedBox(width: kDefaultPaddin / 2)
//       ],
//     );
//   }
// }

// class Page extends StatelessWidget {
//   final content;
//   final index;
//   final category;

//   const Page({
//     Key key,
//     this.content,
//     this.index,
//     this.category,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//           child: Text(
//             category,
//             style: Theme.of(context)
//                 .textTheme
//                 .headline5
//                 .copyWith(fontWeight: FontWeight.bold),
//           ),
//         ),
//         SubCategoryIndicator(
//           selectedIndex: index,
//         ),
//         content,
//       ],
//     );
//   }
// }
