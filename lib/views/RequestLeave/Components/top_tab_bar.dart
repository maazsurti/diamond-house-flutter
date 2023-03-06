import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/constants.dart';
import 'package:learning_flutter/helpers/colors.dart';
import 'package:learning_flutter/views/RequestLeave/Components/common_request_leave.dart';

class TopTabBar extends StatelessWidget {
  const TopTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: logicalWidth,
          height: logicalWidth / 7,
          color: AppColor.secondary,
          child: TabBar(
            indicatorColor: AppColor.primary,
            unselectedLabelColor: AppColor.primary,
            labelColor: AppColor.primary,
            labelStyle: TextStyle(
                fontFamily: fontName,
                fontWeight: FontWeight.bold,
                fontSize: 15),
            tabs: const [
              Tab(
                text: "Sick Leave",
              ),
              Tab(
                text: "Annual Leave",
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(children: const [
            CommonRequestLeave(),
            CommonRequestLeave(),
          ]),
        )
      ],
    );
  }
}
