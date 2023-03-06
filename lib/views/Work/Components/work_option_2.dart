import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../helpers/colors.dart';

class WorkOption2 extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback action;
  const WorkOption2({
    Key? key,
    required this.title,
    required this.icon,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: logicalWidth / 1.2,
      height: 56,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(AppColor.primary),
            side: MaterialStateProperty.all(
                BorderSide(width: 0.5, color: AppColor.primary)),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
          onPressed: action,
          child: Row(
            children: [
              Icon(
                icon,
                size: logicalWidth * 0.08,
                color: AppColor.primary,
              ),
              SizedBox(width: 16),
              Text(
                title,
                style: TextStyle(
                    fontFamily: fontName,
                    color: AppColor.primary,
                    fontSize: 14,
                    height: 1.1,
                    wordSpacing: -1,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              Icon(
                CupertinoIcons.chevron_right,
                size: 18,
              )
            ],
          )),
    );
  }
}
