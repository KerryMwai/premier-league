// ignore: file_names
import 'package:contained_tab_bar_view_with_custom_page_navigator/contained_tab_bar_view_with_custom_page_navigator.dart';
import 'package:flutter/material.dart';
import 'package:ueableague/constants/constants.dart';
import 'package:ueableague/constants/league-infor.dart';
import 'package:ueableague/pages/league/matches.dart';
import 'package:ueableague/pages/league/news.dart';
import 'package:ueableague/pages/league/overview.dart';
import 'package:ueableague/pages/league/players.dart';
import 'package:ueableague/pages/league/schedule-match.dart';
import 'package:ueableague/pages/league/statistics.dart';
import 'package:ueableague/pages/league/table.dart';
import 'package:ueableague/pages/league/teams.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // actions: [
        //   ElevatedButton(
        //       onPressed: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) =>  ScheduleMatchPage()));
        //       },
        //       child: const Text("Manage League"))
        // ],
      ),
      body: ContainedTabBarView(
        tabs: List.generate(
          tabTitles.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 3, right: 2),
            child: Text(tabTitles[index], style: const TextStyle(color: Color.fromARGB(255, 240, 146, 6)),),
          ),
        ),
        tabBarProperties: TabBarProperties(
          padding: const EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 12.0,
          ),
          indicator: ContainerTabIndicator(
            radius: BorderRadius.circular(8.0),
            color: const Color.fromARGB(255, 233, 50, 4),
            borderWidth: 1.0,
            borderColor: black.withOpacity(0.3),
          ),
          labelColor: white,
          labelStyle: const TextStyle(
              color: black, fontSize: 11, fontWeight: FontWeight.w500),
          unselectedLabelColor: black,
          
        ),
        views: const [
          OverviewPage(),
          MatchesPage(),
          TablePage(),
          NewsPage(),
          StatsPage(),
          PlayersPage(),
          TeamsPage(),
        ],
        onChange: (index) => print(index),
      ),
    );
  }
}
