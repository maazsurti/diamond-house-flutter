import 'package:flutter/material.dart';

class AnnouncementCard extends StatefulWidget {
  const AnnouncementCard({super.key});

  @override
  State<AnnouncementCard> createState() => _AnnouncementCardState();
}

class _AnnouncementCardState extends State<AnnouncementCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Card(
          color: Colors.white,
          elevation: 0,
          margin: EdgeInsets.zero,
          //shape: ContinuousRectangleBorder(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(color: Colors.white, boxShadow: const [
              BoxShadow(blurRadius: 5, color: Colors.black26)
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text("New HR Rules"),
                    Spacer(),
                    Text("10 Sep'22 | 18:00")
                  ],
                ),
                SizedBox(height: 2),
                Text("Fatima Sayyed - HR"),
                SizedBox(height: 8),
              ],
            ),
          )),
    );
  }
}
