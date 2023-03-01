import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../helpers/colors.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              title,
              style: TextStyle(
                color: AppColor.primary,
                fontSize: 18,
                letterSpacing: 0.2,
                fontWeight: FontWeight.bold,
                fontFamily: fontName,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              CupertinoIcons.chevron_down,
              color: AppColor.primary,
            ),
          ],
        ),
        Divider(
          thickness: 1,
          indent: 0,
          endIndent: 0,
          height: 24,
          color: AppColor.primary,
        ),
        SizedBox(
          height: 4,
        ),
      ],
    );
  }
}
