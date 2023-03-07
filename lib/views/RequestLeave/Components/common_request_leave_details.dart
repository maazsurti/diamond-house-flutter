import 'package:flutter/material.dart';
import 'package:learning_flutter/reusable_views/handle_bar.dart';

import '../../../constants/constants.dart';
import '../../../helpers/colors.dart';
import '../../../reusable_views/button.dart';

class CommonRequestLeaveDetails extends StatefulWidget {
  const CommonRequestLeaveDetails({super.key});

  @override
  State<CommonRequestLeaveDetails> createState() =>
      _CommonRequestLeaveDetailsState();
}

class _CommonRequestLeaveDetailsState extends State<CommonRequestLeaveDetails> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(height: 16),
                    DateField(),
                    SizedBox(height: 16),
                    Text(
                      "To:",
                      style: TextStyle(
                          fontFamily: fontName,
                          fontSize: 14,
                          height: 1,
                          color: AppColor.primary,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    DateField(),
                    SizedBox(
                      height: 56,
                    ),
                    Text(
                      "Want to leave a message?",
                      style: TextStyle(
                          fontFamily: fontName,
                          fontSize: 19,
                          height: 1,
                          color: AppColor.primary,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: 140,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: AppColor.primary,
                            width: 0.6,
                          )),
                      child: TextField(
                        cursorColor: Colors.black54,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                              "Type your reason for requesting leave here...",
                          hintStyle: TextStyle(
                              fontFamily: fontName,
                              fontSize: 11,
                              color: Colors.black87),
                        ),
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                      ),
                    ),
                    SizedBox(height: 96),
                    Button(title: "Submit", action: () {}),
                    SizedBox(height: 36),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DateField extends StatefulWidget {
  const DateField({super.key});

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2024, 9, 7, 17, 30));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        color: AppColor.primary,
        child: Row(
          children: [
            Text(
              "15/09/2022",
              style: TextStyle(
                  color: Colors.white, fontFamily: fontName, fontSize: 12),
            ),
            Spacer(),
            Icon(
              Icons.calendar_month,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
