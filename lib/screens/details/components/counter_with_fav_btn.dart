import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatefulWidget {
  const CounterWithFavBtn({
    Key key,
  }) : super(key: key);

  @override
  _CounterWithFavBtnState createState() => _CounterWithFavBtnState();
}

class _CounterWithFavBtnState extends State<CounterWithFavBtn> {
  var liked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        GestureDetector(
            child: Container(
              padding: EdgeInsets.all(8),
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: liked == true
                    ? Color(0xFFFF6464)
                    : Color.fromRGBO(255, 255, 255, 100),
                shape: BoxShape.circle,
              ),
              child: liked == true
                  ? SvgPicture.asset(
                      "assets/icons/heart.svg",
                      color: Colors.white,
                    )
                  : SvgPicture.asset(
                      "assets/icons/heart.svg",
                      color: Color(0xFFFF6464),
                    ),
            ),
            onTap: () => {
                  setState(() {
                    liked = !liked;
                  }),
                }),
      ],
    );
  }
}
