// import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:ueableague/constants/constants.dart';
import 'package:ueableague/constants/league-infor.dart';
// import 'package:ueableague/controller/change-notifier.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  // late Future _subscription;
  // late PremierLeagueNotifier leagueNotifier;

  //  @override
  // void initState() {
  //   super.initState();
  //  _subscription= Provider.of<PremierLeagueNotifier>(context).fetchInformation();
  // }

  // @override
  // void didChangeDependencies() {
  //         leagueNotifier =
  //       Provider.of<PremierLeagueNotifier>(context);
  //   super.didChangeDependencies();
  // }
  //   @override
  // void dispose() {
  //   super.dispose();
  //   // Unsubscribe from the StreamSubscription in `dispose`
  //   _subscription.cancel();
  // }
  // @override
  Widget build(BuildContext context) {
    // PremierLeagueNotifier leagueNotifier =
    //     Provider.of<PremierLeagueNotifier>(context);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: DataTable(
            columns: const [
              DataColumn(label: Text("Post"), tooltip: "Position"),
              DataColumn(label: Text("Club"), tooltip: "club"),
              DataColumn(label: Text("MP"), tooltip: "match played"),
              DataColumn(label: Text("W"), tooltip: "won"),
              DataColumn(label: Text("D"), tooltip: "draw"),
              DataColumn(label: Text("L"), tooltip: "lost"),
              DataColumn(label: Text("Pts"), tooltip: "points achieved"),
              DataColumn(label: Text("GF"), tooltip: "Total goals"),
              DataColumn(label: Text("GA"), tooltip: "goals away"),
              DataColumn(label: Text("GD"), tooltip: "goal difference"),
              DataColumn(label: Text("Last 5"), tooltip: "last five"),
            ],

            // rows: leagueTableInfor.teams.map((team){
            //   return  DataRow(cells:[
            //      DataCell(Text("${team.position}")),
            //      DataCell(Text("${team.club}")),
            //      DataCell(Text("${team.mp}")),
            //      DataCell(Text("${team.w}")),
            //      DataCell(Text("${team.d}")),
            //      DataCell(Text("${team.l}")),
            //      DataCell(Text("${team.pts}")),
            //      DataCell(Text("${team.gf}")),
            //      DataCell(Text("${team.ga}")),
            //      DataCell(Text("${team.gd}")),
            //     DataCell(Row(
            //       children:const [
            //          Icon(Icons.cancel,color: red,),
            //          Icon(Icons.verified,color: green,),
            //          Icon(Icons.verified,color: green,),
            //          Icon(Icons.remove_circle_outlined,color: grey,),
            //          Icon(Icons.verified,color: green,),
            //       ],
            //     )),
            //   ] );
            // } ).toList()
            rows: List.generate(leagueTableInfor.length, (index) {
              return DataRow(cells: [
                DataCell(Text(leagueTableInfor[index]['position'])),
                DataCell(Text(leagueTableInfor[index]['club'])),
                DataCell(Text(leagueTableInfor[index]['mp'])),
                DataCell(Text(leagueTableInfor[index]['w'])),
                DataCell(Text(leagueTableInfor[index]['d'])),
                DataCell(Text(leagueTableInfor[index]['l'])),
                DataCell(Text(leagueTableInfor[index]['pts'])),
                DataCell(Text(leagueTableInfor[index]['gf'])),
                DataCell(Text(leagueTableInfor[index]['ga'])),
                DataCell(Text(leagueTableInfor[index]['gd'])),
                DataCell(Row(
                    children: List.generate(
                        leagueTableInfor[index]['last5'].length, (ind) {
                  if (leagueTableInfor[index]['last5'][ind] == 'w') {
                    return const Icon(
                      Icons.verified,
                      color: green,
                    );
                  } else if (leagueTableInfor[index]['last5'][ind] == 'd') {
                    return const Icon(
                      Icons.remove_circle_outlined,
                      color: grey,
                    );
                  } else if (leagueTableInfor[index]['last5'][ind] == 'l') {
                    return const Icon(
                      Icons.cancel,
                      color: red,
                    );
                  } else {
                    return const Text("Error!",
                        style:
                            TextStyle(color: red, fontWeight: FontWeight.w800));
                  }
                }))),
              ]);
            }),
          ),
        ),
      ),
    );
  }
}



//  Icon(Icons.cancel,color: red,),
//  Icon(Icons.verified,color: green,),
//  Icon(Icons.verified,color: green,),
//  Icon(Icons.remove_circle_outlined,color: grey,)
//  Icon(Icons.verified,color: green,),
