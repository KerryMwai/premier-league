import 'package:flutter/material.dart';
import 'package:ueableague/widgets/custom-text-field.dart';

class ScheduleMatchPage extends StatefulWidget {
  ScheduleMatchPage({super.key});

  @override
  State<ScheduleMatchPage> createState() => _ScheduleMatchPageState();
}

class _ScheduleMatchPageState extends State<ScheduleMatchPage> {
  TextEditingController home = TextEditingController();

  TextEditingController away = TextEditingController();

  TextEditingController date = TextEditingController();

  TextEditingController start = TextEditingController();

  TextEditingController end = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 15, bottom: 10),
                      child: const Text(
                        "Home Team",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "poppinnlight"),
                      )),
                  CustomTextField(
                      fractionWithSize: 0.04,
                      hintText: "Home Team",
                      isObsecure: false,
                      textController: home),
                  Container(
                      margin:
                          const EdgeInsets.only(left: 15, bottom: 10, top: 10),
                      child: const Text(
                        "Away Team",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "poppinnlight"),
                      )),
                  CustomTextField(
                      fractionWithSize: 0.04,
                      hintText: "Away",
                      isObsecure: false,
                      textController: away),
                  Container(
                      margin:
                          const EdgeInsets.only(left: 15, bottom: 10, top: 10),
                      child: const Text(
                        "Date",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "poppinnlight"),
                      )),
                  CustomTextField(
                      fractionWithSize: 0.04,
                      hintText: "Date",
                      isObsecure: false,
                      textController: date),
                  Container(
                      margin:
                          const EdgeInsets.only(left: 15, bottom: 10, top: 10),
                      child: const Text(
                        "Start Time",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "poppinnlight"),
                      )),
                  CustomTextField(
                      fractionWithSize: 0.04,
                      hintText: "Start Time",
                      isObsecure: false,
                      textController: start),
                  Container(
                      margin:
                          const EdgeInsets.only(left: 15, bottom: 10, top: 10),
                      child: const Text(
                        "End Time",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "poppinnlight"),
                      )),
                  CustomTextField(
                      fractionWithSize: 0.04,
                      hintText: "End Time",
                      isObsecure: false,
                      textController: end),
                  CustomSizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Map<String, dynamic> match={
                              "home":home.text,
                              "away":away.text,
                              "date":date.text,
                              "start":start.text,
                              "end":end.text
                            };
                            setState(() {
                              // print(match);
                            });
                          }, child: const Text("Schedule"))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
