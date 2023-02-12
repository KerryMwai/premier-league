import 'package:flutter/material.dart';
import 'package:ueableague/constants/constants.dart';
import 'package:ueableague/constants/league-infor.dart';
import 'package:ueableague/widgets/custom-text-field.dart';

class PlayersPage extends StatefulWidget {
  const PlayersPage({super.key});

  @override
  State<PlayersPage> createState() => _PlayersPageState();
}

class _PlayersPageState extends State<PlayersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            itemCount: leagueplayers.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 280,
                mainAxisExtent: 260,
                crossAxisSpacing: 10,
                // mainAxisExtent: 10,
                mainAxisSpacing: 5),
            itemBuilder: (_, index) => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  // height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: black.withOpacity(0.2))),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          color: buttonColor2,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 8),
                        color: white,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                leagueplayers[index]["name"],
                                maxLines: 2,
                                style: const TextStyle(
                                  color: black,
                                    fontSize: 18,
                                    fontFamily: "poppinnlight",
                                    overflow: TextOverflow.ellipsis),
                              ),
                              CustomSizedBox(height: 5.0),
                              Text(
                                leagueplayers[index]["coveragearea"],
                                maxLines: 2,
                                style: TextStyle(
                                    color: black.withOpacity(0.5),
                                    fontSize: 13,
                                    fontFamily: "poppinnlight",
                                    overflow: TextOverflow.ellipsis),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 18,
                                    height: 18,
                                    decoration: const BoxDecoration(
                                        color: buttonColor2,
                                        shape: BoxShape.circle),
                                  ),
                                  CustomSizedBox(
                                    width: 4,
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: Text(
                                      leagueplayers[index]["team"],
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: black.withOpacity(0.5),
                                          fontSize: 13,
                                          fontFamily: "poppinnlight",
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ))
                    ],
                  ),
                )));
  }
}
