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
        // alignment: Alignment.bottomCenter,
        children: <Widget>[
          Positioned(
            top: getDeviceSize(context).height * 0.3,
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
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
