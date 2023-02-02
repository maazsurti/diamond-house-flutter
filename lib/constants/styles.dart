import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helpers/colors.dart';
import 'constants.dart';

var textFieldTheme = InputDecorationTheme(
  contentPadding: EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 3,
  ),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 0.5, color: AppColor.primary),
      borderRadius: BorderRadius.zero),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: AppColor.primary,
      ),
      borderRadius: BorderRadius.zero),
  hintStyle: TextStyle(
      color: AppColor.primary.withAlpha(150),
      letterSpacing: 0,
      fontSize: 12,
      fontFamily: 'Poppins'),
);

var buttonStyle = ButtonThemeData(
    focusColor: AppColor.primary,
    buttonColor: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
        side: BorderSide(
          width: 0.5,
          color: AppColor.primary,
        )),
    padding: EdgeInsets.symmetric(
      horizontal: logicalWidth / 3,
    ));

var buttonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(
              width: 0.5,
              color: AppColor.primary,
            )),
        padding: EdgeInsets.symmetric(
          horizontal: logicalWidth / 3,
        )));

var textFieldTextStyle = TextStyle(
    color: AppColor.primary,
    letterSpacing: 0,
    fontSize: 14,
    fontFamily: 'Poppins');

var defaultAppBar = AppBar(
  elevation: 0,
  backgroundColor: AppColor.primary,
  actions: [
    CupertinoButton(
        onPressed: () {},
        child: Icon(
          Icons.notifications,
          size: 28,
          color: Colors.white,
        )),
    SizedBox(width: 10)
  ],
  title: Text(
    "Home Page",
    style: TextStyle(
        color: AppColor.secondary,
        fontFamily: fontName,
        fontSize: 19,
        fontWeight: FontWeight.w600),
  ),
  leadingWidth: 300,
  centerTitle: false,
);
