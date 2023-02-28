import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/images.dart';
import '../../../helpers/colors.dart';

class HomepageHeaderView extends StatelessWidget {
  const HomepageHeaderView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Row(
            children: [
              SizedBox(
                width: logicalWidth / 4,
                height: logicalHeight / 8,
                child: Picture.homePageLogo,
              ),
              VerticalDivider(
                color: AppColor.primary,
                thickness: 2,
              ),
            ],
          ),
        ),
        SizedBox(width: logicalHeight / 70),
        SizedBox(
          width: logicalWidth / 2.5,
          child: Text(
            "Choose your Desired service!",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: AppColor.primary,
              fontSize: 18,
              letterSpacing: -0.6,
              fontWeight: FontWeight.w100,
              fontFamily: fontName,
            ),
          ),
        ),
      ],
    );
  }
}
