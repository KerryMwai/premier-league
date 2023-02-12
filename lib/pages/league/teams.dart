import 'package:flutter/material.dart';
import 'package:ueableague/constants/constants.dart';
import 'package:ueableague/constants/league-infor.dart';

class TeamsPage extends StatefulWidget {
  const TeamsPage({super.key});

  @override
  State<TeamsPage> createState() => _TeamsPageState();
}

class _TeamsPageState extends State<TeamsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            itemCount: leagueteams.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                mainAxisExtent: 230,
                crossAxisSpacing: 10,
                childAspectRatio: 3/2,
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
                        padding: const EdgeInsets.all(8),
                        height: 100,
                        decoration:  BoxDecoration(
                          
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          color: buttonColor2,
                          image: DecorationImage(image: NetworkImage(leagueteams[index]["burgeurl"]), fit: BoxFit.cover)
                        ),
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 8),
                        color: white,
                        child: Column(children: [
                          Text(
                            leagueteams[index]["name"],
                            maxLines: 2,
                            style: const TextStyle(
                              color: black,
                                fontSize: 18,
                                fontFamily: "poppinnlight",
                                overflow: TextOverflow.ellipsis),
                          )
                        ]),
                      ))
                    ],
                  ),
                )));
  }
}
