import 'package:flutter/material.dart';
import '../../login.dart';
import 'background.dart';
import '../../../components/rounded_button.dart';
import '../../../shared/customColors.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/undraw_under_construction_46pa.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.25),
            RoundedButton(
              text: "Se Connecter",
              color: CustomColors.littleBlue,
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
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
