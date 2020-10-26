import 'package:ShopAR/screens/camera/camera_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ShopAR/models/Product.dart';
import 'package:ShopAR/screens/details/components/product_detail_body.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a different color
      backgroundColor: widget.product.color.withOpacity(.8),
      appBar: buildAppBar(context),
      body: ProductDetailBody(
        product: widget.product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: widget.product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.camera),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CamOverlay(),
              ),
            );
          },
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}
