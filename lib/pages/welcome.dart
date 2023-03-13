import 'package:flutter/material.dart';
import '../constants.dart';
import 'Components/back.dart';
import 'Components/stadebuttom.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Widget topimage = Positioned(
      top: 0,
      left: 0,
      child: Image.asset(
        "asset/images/main_top.png",
        width: size.width * 0.3,
      ),
    );
    Widget botttemimage = Positioned(
      bottom: 0,
      left: 0,
      child: Image.asset(
        "asset/images/main_bottom.png",
        width: size.width * 0.15,
      ),
    );
    Widget centerimage = Image.asset(
      "asset/images/photo2.jpg",
      width: size.width,
    );
    Widget maincontent = Column(
      children: [
        SizedBox(
          height: size.height * 0.02,
        ),
        StadiumButtom(
            text: "LOGIN",
            textcolor: Colors.white,
            bgcolor: blue,
            size: size,
            function: () {
              Navigator.pushNamed(
                  context,"LoginPage"
                  );
            }),
        SizedBox(
          height: size.height * 0.02,
        ),
        StadiumButtom(
            size: size,
            text: "SIGNUP",
            bgcolor: lightblue,
            textcolor: blacktext,
            function: () {
              Navigator.pushNamed(
                  context,"SignupPage");
            }),
      ],
    );
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Back(
        title: "Welcome to AI Dermatologist",
        size: size,
        bottemimage: botttemimage,
        topimage: topimage,
        centerimage: centerimage,
        maincontent: maincontent,
      ),
    );
  }
}
