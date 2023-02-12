import 'package:flutter/material.dart';
import 'package:ueableague/constants/constants.dart';
import 'package:ueableague/constants/league-infor.dart';
import 'package:ueableague/widgets/custom-text-field.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(children: [
      CustomSizedBox(
        height: 10,
      ),
      Container(
        padding: const EdgeInsets.only(left: 30),
        child: const Text(
          "Top News",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, fontFamily: "oswald"),
        ),
      ),
      Column(
        children: List.generate(leaguenews.length, (index) =>  Container(
            width: size.width,
            // height: 150,
            decoration: const BoxDecoration(color: white),
            child: Column(
              children: [
                CustomSizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: size.width * 0.32,
                      height: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image:  DecorationImage(
                              image: NetworkImage(leaguenews[index]['photoutl']), fit: BoxFit.fill)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          leaguenews[index]['newsthrough'],
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "oswald"),
                        ),
                        CustomSizedBox(height: 5),
                        SizedBox(
                          width: size.width * 0.6,
                          child: Text(
                            leaguenews[index]['newsheadline'],
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue[800],
                                fontWeight: FontWeight.w600,
                                fontFamily: "robotothin"),
                          ),
                        ),
                        CustomSizedBox(height: 10),
                        Text(
                          leaguenews[index]['body']['time'],
                          style: const TextStyle(
                              fontSize: 16,
                              color: dividercolor,
                              fontWeight: FontWeight.w100,
                              fontFamily: "Itim"),
                        )
                      ],
                    )
                  ],
                ),
                  const Divider(
            color: dividercolor,
            thickness: 1.5,
          )

              ],
            ),
          ),),
      )
    ]));
  }
}

  