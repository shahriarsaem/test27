import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/widget/brand_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 32),
              height: 100,
              width: 100,
              color: Color(0xff292B3E),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: SvgPicture.asset(
                  "asset/splashIcon.svg",
                ),
              ),
            ),
            Text(
              "RANCANG",
              style: myStyle(36, aTextColor, FontWeight.w700),
            ),
            Text(
              "Your Personal Task Manager",
              style: myStyle(17, aTextColor, FontWeight.w400),
            ),
            SizedBox(
              height: 264,
            ),
            MaterialButton(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: buttonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28)),
              onPressed: () {},
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Personal Task Manager",
                    style: myStyle(17, aTextColor, FontWeight.w400),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SvgPicture.asset(
              "asset/indicator.svg",
            ),
          ],
        ),
      ),
    );
  }
}
