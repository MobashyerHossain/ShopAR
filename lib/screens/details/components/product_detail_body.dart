import 'package:flutter/material.dart';
import 'package:ShopAR/constants.dart';
import 'package:ShopAR/models/Product.dart';

import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class ProductDetailBody extends StatefulWidget {
  final Product product;
  final int frameColor;

  ProductDetailBody({
    Key key,
    this.product,
    this.frameColor,
  }) : super(key: key);

  @override
  _ProductDetailBodyState createState() => _ProductDetailBodyState();
}

class _ProductDetailBodyState extends State<ProductDetailBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            // color: brighten(product.color),
            margin: EdgeInsets.only(top: getDeviceSize(context).height * 0.3),
            padding: EdgeInsets.only(
              top: getDeviceSize(context).height * 0.7,
              left: kDefaultPaddin,
              right: kDefaultPaddin,
            ),
            // height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
          ),
          ProductTitleWithImage(
            product: widget.product,
            frameColor: widget.frameColor,
          ),
          Container(
            margin: EdgeInsets.only(top: getDeviceSize(context).height * 0.45),
            padding: EdgeInsets.only(
              left: kDefaultPaddin,
              right: kDefaultPaddin,
            ),
            child: Column(
              children: <Widget>[
                ColorAndSize(
                  product: widget.product,
                ),
                Description(product: widget.product),
                SizedBox(height: kDefaultPaddin / 2),
                CounterWithFavBtn(),
                SizedBox(height: kDefaultPaddin / 2),
                AddToCart(product: widget.product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
