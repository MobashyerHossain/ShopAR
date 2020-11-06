import 'package:ShopAR/componenets/modified_flatButton.dart';
import 'package:ShopAR/screens/login/components/already_have_an_account_acheck.dart';
import 'package:ShopAR/screens/login/components/login_background.dart';
import 'package:ShopAR/screens/login/components/rounded_input_field.dart';
import 'package:ShopAR/screens/login/components/rounded_password_field.dart';
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
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            ModifiedFlatButton(
              width: size.width * .8,
              text: "LogIn",
              press: () {},
            ),
            ModifiedFlatButton(
              width: size.width * .8,
              text: "Return",
              press: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       print(1);
                //       // return SignUpScreen();
                //     },
                //   ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
