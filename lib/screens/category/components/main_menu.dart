import 'package:flutter/material.dart';
import 'package:ShopAR/screens/category/components/menu_option.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 100,
          bottom: 20,
        ),
        child: Column(
          children: [
            Container(
              width: 100,
              child: Image.asset("assets/logo/Logo.png"),
            ),
            SizedBox(
              height: 40,
            ),
            MenuOption(
              text: "Profile",
              icon: Icons.face,
            ),
            Divider(
              color: Colors.black87,
              height: 20,
            ),
            MenuOption(
              text: "Favorites",
              icon: Icons.favorite,
            ),
            Divider(
              color: Colors.black87,
              height: 20,
            ),
            MenuOption(
              text: "Cart",
              icon: Icons.category,
            ),
            SizedBox(
              height: 40,
            ),
            FlatButton(
              onPressed: () {},
              child: Container(
                height: 40,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                width: double.infinity,
                child: Text('Mobashyer.co.ltd'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
