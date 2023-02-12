import 'package:flutter/material.dart';
import 'package:ueableague/constants/constants.dart';
import 'package:ueableague/constants/league-infor.dart';
import 'package:ueableague/widgets/custom-text-field.dart';

class MatchesPage extends StatefulWidget {
  const MatchesPage({super.key});

  @override
  State<MatchesPage> createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
            children: List.generate(matches.length, (index) {
            return Column(
              children: [
                CustomSizedBox(height: 10),
                Row(
                  children: [
                    CustomSizedBox(width: 20),
                    Text(matches[index]['matchday'], style:const  TextStyle(fontSize: 20, fontWeight: FontWeight.w500, fontFamily: "oswald"),),],
                ),
                CustomSizedBox(height: 10),
                Column(
                children: List.generate(
                matches[index]['matches'].length,
                (index1) => Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.all(18),
                      width: size.width - 20,
                      height: 170,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 42, 168, 241),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: black.withOpacity(0.2))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomSizedBox(height: 30),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(matches[index]['matches'][index1]['home']
                                          ['name'],style:const  TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontFamily: "Itim", color: black),),
                                      Text(matches[index]['matches'][index1]['home']
                                              ['score']
                                          .toString(),style:const  TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontFamily: "Itim", color: black),),
                                    ],
                                  ),
                                  CustomSizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(matches[index]['matches'][index1]['away']
                                          ['name'],style:const  TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontFamily: "Itim", color: black),),
                                      Text(matches[index]['matches'][index1]['away']
                                              ['score']
                                          .toString(),style:const  TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontFamily: "Itim", color: black),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("FT"),
                                  Text(matches[index]['matches'][index1]['date'],style:const  TextStyle(fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "Itim", color: black),),
                                  Container(
                                    width: 100,
                                    height: 70,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("images/players.jpg"),
                                            fit: BoxFit.cover)),
                                  )
                                ],
                              ),
                            )
                          ]),
                    )),
                ),
              ],
            );
          }))
          );
  }
}
