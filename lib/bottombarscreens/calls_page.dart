import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../tabbarscreens/incoming_page.dart';
import '../tabbarscreens/missed_page.dart';
import '../tabbarscreens/outgoing_page.dart';

class CallsPage extends StatelessWidget {
  CallsPage({Key? key, required this.isHideBottomNavBar}) : super(key: key);
  final Function(bool) isHideBottomNavBar;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Incoming',
                  ),
                  Tab(
                    text: 'Outgoing',
                  ),
                  Tab(
                    text: 'Missed',
                  ),
                ],
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            IncomingPage(),
            OutgoingPage(
              isHideBottomNavBar: (value) {
                isHideBottomNavBar(value);
              },
            ),
            MissedPage(),
          ],
        ),
      ),
    );
  }
}
