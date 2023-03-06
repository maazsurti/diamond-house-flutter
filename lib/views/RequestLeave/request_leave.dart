import 'package:flutter/material.dart';
import 'package:learning_flutter/views/RequestLeave/Components/top_tab_bar.dart';

import '../../reusable_views/navbar.dart';

class RequestLeave extends StatefulWidget {
  const RequestLeave({super.key});

  @override
  State<RequestLeave> createState() => _RequestLeaveState();
}

class _RequestLeaveState extends State<RequestLeave> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: navBar(
                context: context,
                title: "Request Leave",
                isBackButtonEnabled: true),
            body: TopTabBar()));
  }
}
