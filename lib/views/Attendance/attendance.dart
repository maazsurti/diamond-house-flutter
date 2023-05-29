import 'package:flutter/material.dart';
import 'package:learning_flutter/reusable_views/navbar.dart';
import 'package:learning_flutter/views/Attendance/components/header.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(context: context, title: "Attendance"),
      body: Column(
        children: const [Header()],
      ),
    );
  }
}
