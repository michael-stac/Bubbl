import 'package:flutter/material.dart';
import 'appcolors.dart';

Widget customButton(BuildContext context,
    {required VoidCallback onTap,
      required String text,
      Color? bgColor,
      double? padding = 15,
      Color? textColor}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(padding!),
        decoration: BoxDecoration(
            color: bgColor ?? AppColor.chineseWhite,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Text(
          text,
          style: TextStyle(
              color: textColor ?? Colors.white, fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 14),
        )),
  );
}
