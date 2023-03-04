import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:learning_flutter/constants/constants.dart';
import 'package:learning_flutter/helpers/colors.dart';
import 'package:learning_flutter/reusable_views/navbar.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(context: context, title: "Work"),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              width: logicalWidth,
              height: logicalWidth / 3.5,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColor.primary,
                ),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: logicalWidth / 1.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WorkOption(
                    title: "Request Leave",
                    icon: Icon(
                      Icons.calendar_month,
                      size: 50,
                      color: AppColor.primary,
                    ),
                  ),
                  WorkOption(
                    title: "Announcement from HR",
                    icon: Icon(
                      CupertinoIcons.speaker,
                      size: 50,
                      color: AppColor.primary,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WorkOption extends StatelessWidget {
  final String title;
  final Icon icon;
  const WorkOption({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: logicalWidth / 3.15,
      width: logicalWidth / 3.15,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: const [
              BoxShadow(
                blurRadius: 5,
                color: Colors.black26,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  child: icon,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: fontName,
                    color: AppColor.primary,
                    fontSize: 14,
                    height: 1.1,
                    wordSpacing: -1,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
