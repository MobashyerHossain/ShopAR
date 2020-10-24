import 'package:ShopAR/constants.dart';
import 'package:ShopAR/screens/details/components/color_pallet.dart';
import 'package:ShopAR/screens/details/components/size_selector.dart';
import 'package:flutter/material.dart';
import 'package:ShopAR/models/Product.dart';

class ColorAndSize extends StatefulWidget {
  final Product product;
  const ColorAndSize({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  _ColorAndSizeState createState() => _ColorAndSizeState();
}

class _ColorAndSizeState extends State<ColorAndSize> {
  var sizeSelected = 2;

  @override
  Widget build(BuildContext context) {
    var product = widget.product;
    return Column(
      children: [
        // Color Selection
        Row(
          children: [
            ColorPallet(
              hasColor: product.getSubCategory().getCategory().hasColor,
              label: "Frame",
            ),
            SizedBox(
              width: 50,
            ),
            ColorPallet(
              hasColor: product.getSubCategory().getCategory().hasColor,
              label: "Lens",
            ),
          ],
        ),
        // Size Selection
        Row(
          children: [
            SizeSelector(
              label: '',
              color: product.color,
              hasSize: product.getSubCategory().getCategory().hasSize,
            ),
          ],
        )
      ],
    );
  }
}
