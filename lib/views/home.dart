import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/constants.dart';
import 'package:learning_flutter/helpers/colors.dart';

enum button { arabic, english }

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  button selectedButton = button.arabic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/DH-Logo-3x.png'),
                  width: logicalWidth / 1.2,
                  height: logicalHeight / 3,
                ),
                SizedBox(height: logicalHeight / 30),
                Text(
                  "Choose your Language!",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.primary,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: logicalHeight / 70),
                TextButton(
                  onPressed: () {
                    selectedButton = button.arabic;
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: selectedButton == button.arabic
                          ? AppColor.primary
                          : Colors.white,
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
                    "Arabic",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColor.primary,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    selectedButton = button.english;
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: selectedButton == button.english
                          ? AppColor.primary
                          : Colors.white,
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
                    "English",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColor.primary,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}