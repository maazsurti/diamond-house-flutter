import 'package:flutter/material.dart';
import 'package:learning_flutter/reusable_views/handle_bar.dart';

import '../../../constants/constants.dart';
import '../../../helpers/colors.dart';

class CommonRequestLeaveDetails extends StatefulWidget {
  const CommonRequestLeaveDetails({super.key});

  @override
  State<CommonRequestLeaveDetails> createState() =>
      _CommonRequestLeaveDetailsState();
}

class _CommonRequestLeaveDetailsState extends State<CommonRequestLeaveDetails> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: logicalHeight * 0.8,
      child: Center(
        child: Column(
          children: [
            Handlebar(),
            SizedBox(
              height: 24,
            ),
            Text(
              "8",
              style: TextStyle(
                  fontFamily: fontName,
                  fontSize: 32,
                  height: 1,
                  color: AppColor.primary,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "days remaining",
              style: TextStyle(
                  fontFamily: fontName,
                  fontSize: 18,
                  height: 1,
                  color: Colors.black87,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text(
                      "From:",
                      style: TextStyle(
                          fontFamily: fontName,
                          fontSize: 14,
                          height: 1,
                          color: AppColor.primary,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
