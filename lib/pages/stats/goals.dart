import 'package:flutter/material.dart';
import 'package:ueableague/constants/constants.dart';
import 'package:ueableague/constants/league-infor.dart';
import 'package:ueableague/widgets/custom-text-field.dart';

class GoalsPage extends StatelessWidget {
  const GoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Text(
                "Player",
                style: TextStyle(
                    color: white.withOpacity(0.8),
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: Text(
                "Goals",
                style: TextStyle(
                  color: white.withOpacity(0.8),

                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        Divider(
          color: black.withOpacity(0.3),
        ),
        Column(
          children: List.generate(
              topscorers.length,
              (index) => SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Text(
                              "${index + 1}",
                              style:
                                  const TextStyle(fontSize: 17, color: white),
                            ),
                            CustomSizedBox(width: 10),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: buttonColor2,
                                // image: DecorationImage(
                                //     image: AssetImage(""),fit: BoxFit.cover)
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  topscorers[index]['name'],
                                  style: const TextStyle(
                                      fontSize: 17, color: white),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: buttonColor3,
                                        // image: DecorationImage(
                                        //     image: AssetImage(
                                        //         ""),fit: BoxFit.fill)
                                      ),
                                    ),
                                    CustomSizedBox(width: 5),
                                    Text(
                                      topscorers[index]['team'],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: white.withOpacity(0.6)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              topscorers[index]['goals'].toString(),
                              style:
                                   TextStyle(fontSize: 19, color: white.withOpacity(0.6)),
                            ),
                          ],
                        ),
                        Divider(
                          color: white.withOpacity(0.8),
                        ),
                      ],
                    ),
                  )),
        )
      ],
    ));
  }
}
