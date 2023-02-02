import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../helpers/colors.dart';

var navBar = CupertinoNavigationBar(
  backgroundColor: AppColor.primary,
  leading: Column(
    children: [
      Row(
        children: [
          SizedBox(width: 3),
          Text(
            "Home Page",
            style: TextStyle(
                color: AppColor.secondary,
                fontFamily: fontName,
                fontSize: logicalWidth * 0.045,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      )
    ],
  ),
  trailing: Transform.translate(
    offset: const Offset(12, -14),
    child: CupertinoButton(
      child: Icon(
        Icons.notifications,
        size: 25,
        color: Colors.white,
      ),
      onPressed: () {},
    ),
  ),
);
