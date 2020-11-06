import 'package:ShopAR/componenets/modified_flatButton.dart';
import 'package:ShopAR/screens/login/login_screen.dart';
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
            ModifiedFlatButton(
              text: 'Log In',
              width: double.infinity,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogInScreen(),
                  ),
                );
              },
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
