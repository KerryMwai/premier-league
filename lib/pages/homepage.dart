import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ueableague/controller/change-notifier.dart';
import 'package:ueableague/pages/league-information-page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PremierLeagueNotifier themeChangeProvider = PremierLeagueNotifier();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
          
            Container(
              width: size.width,
              height: size.height * 0.4,
              decoration: const BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("images/pitch1.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
            ),
            Expanded(
              child: SizedBox(
                width: size.width,
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Football is a nice eperience, it builds humans being socially and physically. People enjoy football because of its nature, you celebrate, because one of the team won, either the trophy or the at the end of 90 minsutes",
                      style: TextStyle(fontFamily: "oswald", fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminPage()));
                              },
                              child: const Text(
                                "Get started",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    fontFamily: "poppinsitalic"),
                              ))
                        ]),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
