import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  final String label;
  final Color color;
  final bool hasSize;
  const SizeSelector({
    Key key,
    this.color,
    this.hasSize,
    this.label,
  }) : super(key: key);

  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  var sizeSelected = 2;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widget.hasSize
            ? <Widget>[
                Text(widget.label == '' ? "Size" : "${widget.label} Size"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizeChoice(
                      label: "S",
                      isSelected: sizeSelected == 1,
                      color: widget.color,
                      press: () {
                        setState(() {
                          sizeSelected = 1;
                        });
                      },
                    ),
                    SizeChoice(
                      label: "M",
                      isSelected: sizeSelected == 2,
                      color: widget.color,
                      press: () {
                        setState(() {
                          sizeSelected = 2;
                        });
                      },
                    ),
                    SizeChoice(
                      label: "L",
                      isSelected: sizeSelected == 3,
                      color: widget.color,
                      press: () {
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
    );
  }
}

class SizeChoice extends StatelessWidget {
  final bool isSelected;
  final Color color;
  final Function press;
  final String label;
  const SizeChoice({
    Key key,
    this.isSelected,
    this.press,
    this.label,
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
        fillColor: isSelected ? color : Colors.transparent,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
