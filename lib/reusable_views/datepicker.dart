import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//String attendanceDate = DateFormat('MMMM y').format(DateTime.now());
datePicker(BuildContext context, date) {
  showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now(),
    lastDate: DateTime.parse("2025-12-31"),
  ).then(
    (value) {
      if (value != null) {
        date = DateFormat("MMM y").format(value).toString();
      }
    },
  );
}
