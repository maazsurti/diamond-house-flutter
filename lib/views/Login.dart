import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/images.dart';
import 'package:learning_flutter/constants/styles.dart';
import 'package:learning_flutter/helpers/colors.dart';
import '../constants/constants.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var focusNode = FocusNode();
  var isSecureTextEntry = false;
  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          minimum: EdgeInsets.only(bottom: 20),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                width: logicalWidth / 1.2,
                height: logicalHeight / 3,
                child: Picture.diamondHouseLogo,
              ),
              SizedBox(
                height: logicalHeight / 30,
              ),
              Text(
                "Enter your login details!",
                style: TextStyle(
                  fontSize: 18,
                  color: AppColor.primary,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: logicalHeight / 30),
              SizedBox(
                width: logicalWidth / 1.15,
                height: logicalHeight / 20,
                child: TextField(
                  cursorColor: AppColor.primary,
                  style: textFieldTextStyle,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 3,
                    ),
                    hintText: "Enter your email address",
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0.5, color: AppColor.primary),
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
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: logicalWidth / 1.15,
                height: logicalHeight / 20,
                child: TextField(
                  cursorColor: AppColor.primary,
                  style: textFieldTextStyle,
                  obscureText: isSecureTextEntry,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        isSecureTextEntry
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye,
                        color: AppColor.primary,
                      ),
                      onPressed: () {
                        setState(() {
                          isSecureTextEntry = !isSecureTextEntry;
                        });
                      },
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 3,
                    ),
                    hintText: "Enter your password",
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0.5, color: AppColor.primary),
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
                  ),
                ),
              ),
              CupertinoButton(
                onPressed: () {},
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                      fontFamily: fontName,
                      fontSize: 12,
                      color: AppColor.primary),
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () async {
                  if (!mounted) return;
                  Navigator.pushNamedAndRemoveUntil(
                      context, mainTabRoute, (route) => false);
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
                  "Login",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.secondary,
                    fontFamily: fontName,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ],
          )),
        ));
  }
}
