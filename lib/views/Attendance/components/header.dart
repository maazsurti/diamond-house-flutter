import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learning_flutter/constants/constants.dart';
import 'package:learning_flutter/helpers/colors.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  String selectedDate = DateFormat("MMMM y").format(DateTime.now());

  datePicker(BuildContext context, String date) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.parse("2025-12-31"),
    ).then(
      (value) {
        if (value != null) {
          setState(() {
            selectedDate = DateFormat("MMMM y").format(value);
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.secondary,
      height: logicalWidth / 9,
      child: Row(
        children: [
          SizedBox(width: 16),
          Icon(
            Icons.calendar_month,
            color: AppColor.primary,
          ),
          SizedBox(width: 8),
          Text(
            selectedDate,
            style: TextStyle(
                fontSize: 16, fontFamily: fontName, color: AppColor.primary),
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              datePicker(context, selectedDate);
            },
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                foregroundColor: AppColor.primary),
            child: Text(
              "Change",
              style: TextStyle(
                  fontFamily: fontName,
                  fontWeight: FontWeight.w800,
                  fontSize: 15),
            ),
          ),
          SizedBox(width: 4)
        ],
      ),
    );
  }
}
