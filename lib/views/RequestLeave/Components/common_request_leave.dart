import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:learning_flutter/constants/constants.dart';
import 'package:learning_flutter/helpers/colors.dart';
import 'package:learning_flutter/reusable_views/button.dart';
import 'package:learning_flutter/views/RequestLeave/Components/common_request_leave_details.dart';
import 'package:learning_flutter/views/RequestLeave/Components/leave_request_card.dart';

class CommonRequestLeave extends StatefulWidget {
  const CommonRequestLeave({super.key});

  @override
  State<CommonRequestLeave> createState() => _CommonRequestLeaveState();
}

class _CommonRequestLeaveState extends State<CommonRequestLeave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 36,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "My sick day requests",
                style: TextStyle(
                    fontFamily: fontName,
                    fontSize: 16,
                    color: AppColor.primary,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: Center(
              child: Scrollbar(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 0,
                    );
                  },
                  itemBuilder: (context, index) {
                    return LeaveRequestCard();
                  },
                  itemCount: 4,
                ),
              ),
            ),
          ),
          SizedBox(height: 36),
          Button(
              title: "Request Leave",
              action: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return CommonRequestLeaveDetails();
                    });
              }),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
