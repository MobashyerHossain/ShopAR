import 'package:flutter/material.dart';

class MenuOption extends StatelessWidget {
  final text;
  final icon;
  final link;
  const MenuOption({
    Key key,
    this.text,
    this.link,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Container(
        height: 20,
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                right: 20,
              ),
              child: Icon(
                icon,
                color: Colors.black87,
                size: 20,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
