import 'package:ShopAR/componenets/already_have_an_account_acheck.dart';
import 'package:ShopAR/componenets/modified_flatButton.dart';
import 'package:ShopAR/componenets/rounded_input_field.dart';
import 'package:ShopAR/componenets/rounded_password_field.dart';
import 'package:ShopAR/screens/signup/components/signup_background.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignUpBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              placeholder: "Your Name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              placeholder: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              placeholder: "Password",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              placeholder: "Confirm Password",
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
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
