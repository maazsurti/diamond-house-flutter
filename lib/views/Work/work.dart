import 'package:flutter/material.dart';
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
      body: Text("Work"),
    );
  }
}
