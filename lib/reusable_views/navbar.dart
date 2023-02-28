import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../helpers/colors.dart';

ObstructingPreferredSizeWidget appbar(
    {bool isBackButtonEnabled = false, required BuildContext context}) {
  return CupertinoNavigationBar(
    backgroundColor: AppColor.primary,
    leading: Material(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                if (isBackButtonEnabled)
                  CupertinoButton(
                      child: Icon(
                        CupertinoIcons.chevron_left,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
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
}

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
