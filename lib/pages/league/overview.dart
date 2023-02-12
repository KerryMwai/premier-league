import 'package:flutter/material.dart';
import 'package:ueableague/constants/constants.dart';
import 'package:ueableague/constants/league-infor.dart';
import 'package:ueableague/widgets/custom-text-field.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
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
              Text(
                matches[index]['matchday'],
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: "oswald"),
              ),
            ],
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
                        color: Color.fromARGB(255, 245, 174, 69),
                          // color: white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: black.withOpacity(0.2))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        matches[index]['matches'][index1]
                                            ['home']['name'],
                                        style: const TextStyle(
                                          color: black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "poppinnlight"),
                                      ),
                                      Text(
                                        matches[index]['matches'][index1]
                                                ['home']['score']
                                            .toString(),
                                        style: const TextStyle(
                                          color: black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "poppinnlight"),
                                      ),
                                    ],
                                  ),
                                  CustomSizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        matches[index]['matches'][index1]
                                            ['away']['name'],
                                        style: const TextStyle(
                                          color: black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "poppinnlight"),
                                      ),
                                      Text(
                                        matches[index]['matches'][index1]
                                                ['away']['score']
                                            .toString(),
                                        style: const TextStyle(
                                          color: black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "poppinnlight"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 5,
                              height: 60,
                              
                              margin: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                color: black.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                mainAxisAlignment: matches[index]['matches']
                                            [index1]['home']['score'] >
                                        matches[index]['matches'][index1]
                                            ['away']['score']
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: const BoxDecoration(
                                      color: red,
                                      shape: BoxShape.circle
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "FT",
                                    style: TextStyle(
                                      color: black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "robotoblack"),
                                  ),
                                  Text(
                                    matches[index]['matches'][index1]['date'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: black.withOpacity(0.8),
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "robotoblack"),
                                  ),
                                ],
                              ),
                            )
                          ]),
                    )),
          ),
        ],
      );
    })));
  }
}
