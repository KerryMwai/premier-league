import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ueableague/constants/constants.dart';
import 'package:ueableague/controller/change-notifier.dart';
import 'package:ueableague/pages/homepage.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
        brightness: Brightness.light,
        
      ),
    darkTheme: ThemeData(brightness: Brightness.dark),
    themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
    home: MultiProvider(
      providers: [
        ChangeNotifierProvider<PremierLeagueNotifier>(
            create: (_) => PremierLeagueNotifier())
      ],
      child: const HomePage(),
    )));
