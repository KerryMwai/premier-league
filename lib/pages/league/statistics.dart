import 'package:contained_tab_bar_view_with_custom_page_navigator/contained_tab_bar_view_with_custom_page_navigator.dart';
import 'package:flutter/material.dart';
import 'package:ueableague/constants/constants.dart';
import 'package:ueableague/pages/stats/assists.dart';
import 'package:ueableague/pages/stats/goals.dart';
import 'package:ueableague/pages/stats/red-cards.dart';
import 'package:ueableague/pages/stats/yellow-cards.dart';

import '../../constants/league-infor.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainedTabBarView(
        tabs: List.generate(
          statstabs.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Text(statstabs[index], style: const TextStyle(fontFamily: "poppinnlight",color: white, fontSize: 13, fontWeight: FontWeight.w900),),
          ),
        ),
        tabBarProperties: TabBarProperties(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 8.0,
          ),
          indicator: ContainerTabIndicator(
            radius: BorderRadius.circular(16.0),
            color: buttonColor3.withOpacity(0.8),
            borderWidth: 1.0,
            borderColor: Colors.green.withOpacity(0.3),
          ),
          labelColor: white,
          unselectedLabelColor: black,
        ),
        views: const [
          GoalsPage(),
          AssistsPage(),
          YellowCardPage(),
          RedCardPage()
        ],
        onChange: (index) => print(index),
      ),
    );
  }
}
