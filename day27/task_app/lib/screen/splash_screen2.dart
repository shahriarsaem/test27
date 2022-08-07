import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task_app/widget/brand_colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_app/widget/round_button.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Positioned(
            top: -150,
            child: Transform.rotate(
              angle: pi / 5,
              child: Container(
                width: 480,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: aGreyColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Update Progress Your Work for The Team",
                  style: myStyle(36, aTextColor, FontWeight.w700),
                ),
                SvgPicture.asset(
                  "asset/slider.svg",
                ),
                RoundButton(
                  title: "Sign Up",
                  onTap: () {},
                ),
                SizedBox(
                  height: 16,
                ),
                RoundButton(
                  title: "Login",
                  onTap: () {},
                  isColor: true,
                ),
                SizedBox(
                  height: 32,
                ),
                SvgPicture.asset(
                  "asset/Indicator.svg",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
