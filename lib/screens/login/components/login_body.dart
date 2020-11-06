import 'package:ShopAR/components/account_check.dart';
import 'package:ShopAR/components/modified_flatButton.dart';
import 'package:ShopAR/components/rounded_input_field.dart';
import 'package:ShopAR/components/rounded_password_field.dart';
import 'package:ShopAR/screens/login/components/login_background.dart';
import 'package:ShopAR/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LogInBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              placeholder: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              placeholder: "Password",
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            ModifiedFlatButton(
              width: size.width * .5,
              text: "LogIn",
              press: () {},
            ),
            ModifiedFlatButton(
              width: size.width * .5,
              text: "Return",
              press: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AccountCheck(
              login: true,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
