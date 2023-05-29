import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:learning_flutter/constants/constants.dart';
import 'package:learning_flutter/helpers/colors.dart';
import 'package:learning_flutter/helpers/global_functions.dart';
import 'package:learning_flutter/reusable_views/navbar.dart';
import 'package:learning_flutter/views/Annoucements/announcements.dart';
import 'package:learning_flutter/views/Attendance/attendance.dart';
import 'package:learning_flutter/views/RequestLeave/request_leave.dart';
import 'package:learning_flutter/views/Work/Components/work_option.dart';

import 'Components/work_option_2.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: navBar(context: context, title: "Work"),
      body: Column(
        children: [
          SizedBox(
            height: logicalWidth / 2.5,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                SizedBox(
                  width: logicalWidth,
                  height: logicalWidth / 4.2,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      WorkOption(
                        title: "Request Leave",
                        icon: Icon(
                          Icons.calendar_month,
                          size: logicalWidth * 0.1,
                          color: AppColor.primary,
                        ),
                        action: () {
                          navigateTo(context, RequestLeave());
                        },
                      ),
                      SizedBox(width: logicalWidth / 15),
                      WorkOption(
                        title: "Announcement from HR",
                        icon: Icon(
                          CupertinoIcons.speaker,
                          size: logicalWidth * 0.1,
                          color: AppColor.primary,
                        ),
                        action: () {
                          navigateTo(context, Announcement());
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          WorkOption2(
            title: "Attendance",
            icon: Icons.apartment_outlined,
            action: () {
              navigateTo(context, Attendance());
            },
          ),
          SizedBox(height: 10),
          WorkOption2(
            title: "My Salary",
            icon: Icons.wallet_outlined,
            action: () {},
          ),
          SizedBox(height: 10),
          WorkOption2(
            title: "My Complaints",
            icon: Icons.edit,
            action: () {},
          ),
        ],
      ),
    );
  }
}
