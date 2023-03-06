import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../helpers/colors.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback action;
  const Button({
    Key? key,
    required this.title,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action,
      style: TextButton.styleFrom(
          backgroundColor: AppColor.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(
                width: 0.5,
                color: AppColor.primary,
              )),
          padding: EdgeInsets.symmetric(
            horizontal: logicalWidth / 3,
          )),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: AppColor.secondary,
          fontFamily: fontName,
          fontWeight: FontWeight.w100,
        ),
      ),
    );
  }
}
