import 'package:flutter/material.dart';
import 'package:ShopAR/models/Product.dart';

import '../../../constants.dart';

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
  var frameColorSelected = 1;
  var lensColorSelected = 1;
  var sizeSelected = 2;

  @override
  Widget build(BuildContext context) {
    var product = widget.product;
    return Column(
      children: [
        // Color Selection
        Row(
          children: product.getSubCategory().getCategory().hasColor == true
              ? <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Frame Color"),
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              child: ColorDot(
                                color: Color.fromRGBO(0, 0, 0, 100),
                                isSelected:
                                    frameColorSelected == 1 ? true : false,
                              ),
                              onTap: () {
                                setState(() {
                                  frameColorSelected = 1;
                                });
                              },
                            ),
                            GestureDetector(
                              child: ColorDot(
                                color: Color.fromRGBO(0, 55, 166, 100),
                                isSelected:
                                    frameColorSelected == 2 ? true : false,
                              ),
                              onTap: () {
                                setState(() {
                                  frameColorSelected = 2;
                                });
                              },
                            ),
                            GestureDetector(
                              child: ColorDot(
                                color: Color.fromRGBO(132, 0, 0, 100),
                                isSelected:
                                    frameColorSelected == 3 ? true : false,
                              ),
                              onTap: () {
                                setState(() {
                                  frameColorSelected = 3;
                                });
                              },
                            ),
                            GestureDetector(
                              child: ColorDot(
                                color: Color.fromRGBO(0, 90, 0, 100),
                                isSelected:
                                    frameColorSelected == 4 ? true : false,
                              ),
                              onTap: () {
                                setState(() {
                                  frameColorSelected = 4;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Lens Color"),
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              child: ColorDot(
                                color: Color.fromRGBO(0, 0, 0, 100),
                                isSelected:
                                    lensColorSelected == 1 ? true : false,
                              ),
                              onTap: () {
                                setState(() {
                                  lensColorSelected = 1;
                                });
                              },
                            ),
                            GestureDetector(
                              child: ColorDot(
                                color: Color.fromRGBO(0, 55, 166, 100),
                                isSelected:
                                    lensColorSelected == 2 ? true : false,
                              ),
                              onTap: () {
                                setState(() {
                                  lensColorSelected = 2;
                                });
                              },
                            ),
                            GestureDetector(
                              child: ColorDot(
                                color: Color.fromRGBO(132, 0, 0, 100),
                                isSelected:
                                    lensColorSelected == 3 ? true : false,
                              ),
                              onTap: () {
                                setState(() {
                                  lensColorSelected = 3;
                                });
                              },
                            ),
                            GestureDetector(
                              child: ColorDot(
                                color: Color.fromRGBO(0, 90, 0, 100),
                                isSelected:
                                    lensColorSelected == 4 ? true : false,
                              ),
                              onTap: () {
                                setState(() {
                                  lensColorSelected = 4;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]
              : [
                  SizedBox(
                    height: 5,
                  ),
                ],
        ),
        SizedBox(
          height: 10,
        ),
        // Size Selection
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: product.getSubCategory().getCategory().hasSize == true
                    ? <Widget>[
                        Text("Size"),
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: sizeSelected == 1
                                      ? product.color
                                      : Colors.white,
                                  border: sizeSelected == 1
                                      ? Border.all()
                                      : Border.symmetric(
                                          horizontal: BorderSide.none,
                                          vertical: BorderSide.none,
                                        ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Text(
                                  ' S ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  sizeSelected = 1;
                                });
                              },
                            ),
                            GestureDetector(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: sizeSelected == 2
                                      ? product.color
                                      : Colors.white,
                                  border: sizeSelected == 2
                                      ? Border.all()
                                      : Border.symmetric(
                                          horizontal: BorderSide.none,
                                          vertical: BorderSide.none,
                                        ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 2),
                                  child: Text(
                                    'M',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  sizeSelected = 2;
                                });
                              },
                            ),
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: sizeSelected == 3
                                      ? product.color
                                      : Colors.white,
                                  border: sizeSelected == 3
                                      ? Border.all()
                                      : Border.symmetric(
                                          horizontal: BorderSide.none,
                                          vertical: BorderSide.none,
                                        ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Text(
                                    'L',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  sizeSelected = 3;
                                });
                              },
                            ),
                          ],
                        ),
                      ]
                    : [
                        SizedBox(
                          height: 5,
                        ),
                      ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    // by default isSelected is false
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
