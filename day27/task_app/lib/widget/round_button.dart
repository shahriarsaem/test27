import 'package:flutter/material.dart';
import 'package:task_app/widget/brand_colors.dart';

class RoundButton extends StatelessWidget {
  RoundButton({Key? key, this.isColor, this.onTap, this.title})
      : super(key: key);

  String? title;
  VoidCallback? onTap;
  bool? isColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: isColor == null ? buttonColor : Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
          side: BorderSide(
              color: isColor == null ? Colors.transparent : Colors.grey)),
      onPressed: onTap,
      height: 56,
      minWidth: double.infinity,
      child: Text(
        "${title}",
        style: myStyle(17, aTextColor, FontWeight.w400),
      ),
    );
  }
}
