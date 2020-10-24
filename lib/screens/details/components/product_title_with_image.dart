import 'package:flutter/material.dart';
import 'package:ShopAR/models/Product.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;
  final int frameColor;
  const ProductTitleWithImage({
    Key key,
    this.product,
    this.frameColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: kDefaultPaddin / 2),
          Text(
            "${product.shortInfo}",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Price\n",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: "\$${product.price}",
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: getDeviceSize(context).width * .6,
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
