import 'package:ShopAR/constants.dart';
import 'package:flutter/material.dart';

class ColorPallet extends StatefulWidget {
  final String label;
  final bool hasColor;
  const ColorPallet({
    Key key,
    this.label,
    this.hasColor,
  }) : super(key: key);

  @override
  _ColorPalletState createState() => _ColorPalletState();
}

class _ColorPalletState extends State<ColorPallet> {
  var colorSelected = 1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widget.hasColor
            ? <Widget>[
                Text("${this.widget.label} Color"),
                Row(
                  children: <Widget>[
                    ColorChoice(
                      color: Colors.black,
                      isSelected: colorSelected == 1,
                      press: () {
                        setState(() {
                          colorSelected = 1;
                        });
                      },
                    ),
                    ColorChoice(
                      color: Colors.blue,
                      isSelected: colorSelected == 2,
                      press: () {
                        setState(() {
                          colorSelected = 2;
                        });
                      },
                    ),
                    ColorChoice(
                      color: Colors.red,
                      isSelected: colorSelected == 3,
                      press: () {
                        setState(() {
                          colorSelected = 3;
                        });
                      },
                    ),
                    ColorChoice(
                      color: Colors.green,
                      isSelected: colorSelected == 4,
                      press: () {
                        setState(() {
                          colorSelected = 4;
                        });
                      },
                    ),
                  ],
                ),
              ]
            : [
                SizedBox(
                  height: 5,
                )
              ],
      ),
    );
  }
}

class ColorChoice extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final Function press;
  const ColorChoice({
    Key key,
    this.isSelected,
    this.press,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: press,
        elevation: 0,
        constraints: BoxConstraints(
          maxHeight: 30,
        ),
        shape: CircleBorder(),
        child: ColorDot(
          color: darken(color.withAlpha(180), 30),
          isSelected: isSelected,
        ),
      ),
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
