import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/constants.dart';
import 'package:learning_flutter/constants/images.dart';
import 'package:learning_flutter/helpers/colors.dart';
import 'package:learning_flutter/helpers/user_preferences.dart';

import '../Login/Login.dart';

enum button { arabic, english }

class _LanguageSelecState extends StatefulWidget {
  const _LanguageSelecState({super.key});

  @override
  State<_LanguageSelecState> createState() => __LanguageSelecStateState();
}

class __LanguageSelecStateState extends State<_LanguageSelecState> {
  button selectedButton = button.arabic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(bottom: 20),
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: logicalWidth / 1.2,
                  height: logicalHeight / 3,
                  child: Picture.diamondHouseLogo,
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
                    setState(() {
                      selectedButton = button.arabic;
                    });
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
                      color: selectedButton == button.arabic
                          ? Colors.white
                          : AppColor.primary,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedButton = button.english;
                    });
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
                      color: selectedButton == button.english
                          ? Colors.white
                          : AppColor.primary,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () async {
                    await UserDefaults.load();
                    await UserDefaults.isArabic(
                        selectedButton == button.arabic ? true : false);

                    if (!mounted) return;

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginView(),
                        ));
                    print(UserDefaults.isLanguageArabic());
                  },
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
                    "Confirm",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColor.secondary,
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
