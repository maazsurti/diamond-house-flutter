import 'package:flutter/material.dart';
import 'package:learning_flutter/reusable_views/navbar.dart';
import 'package:learning_flutter/views/Annoucements/Components/annoucement_card.dart';

class Announcement extends StatefulWidget {
  const Announcement({super.key});

  @override
  State<Announcement> createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(
          context: context, title: "Announcements", isBackButtonEnabled: true),
      body: Column(
        children: [
          SizedBox(height: 48),
          Expanded(
            child: ListView.separated(
                itemBuilder: ((context, index) {
                  return AnnouncementCard();
                }),
                separatorBuilder: ((context, index) {
                  return SizedBox(
                    height: 16,
                  );
                }),
                itemCount: 3),
          ),
        ],
      ),
    );
  }
}
