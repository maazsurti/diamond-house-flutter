import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../helpers/colors.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback action;
  double? width;
  Button({
    Key? key,
    required this.title,
    required this.action,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        minWidth: width ?? double.infinity,
        color: AppColor.primary,
        height: 40,
        onPressed: action,
        // style: TextButton.styleFrom(
        //   backgroundColor: AppColor.primary,
        //   shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.zero,
        //       side: BorderSide(
        //         width: 0.5,
        //         color: AppColor.primary,
        //       )),
        // ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: AppColor.secondary,
            fontFamily: fontName,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
    );
  }
}
