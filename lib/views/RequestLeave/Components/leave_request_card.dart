import 'package:flutter/material.dart';

class LeaveRequestCard extends StatefulWidget {
  const LeaveRequestCard({super.key});

  @override
  State<LeaveRequestCard> createState() => _LeaveRequestCardState();
}

class _LeaveRequestCardState extends State<LeaveRequestCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Card(
        color: Colors.white,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: ContinuousRectangleBorder(),
        child: SingleChildScrollView(
          child: Container(
            clipBehavior: Clip.none,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black26,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("1.0 day (s)"),
                        Text("Sick"),
                      ],
                    ),
                    Spacer(),
                    Text("Pending")
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Oct 05, 2022"),
                Text("Oct 06, 2022"),
                SizedBox(
                  height: 16,
                ),
                Text("Comments:"),
                Text("Your leave is under process"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
