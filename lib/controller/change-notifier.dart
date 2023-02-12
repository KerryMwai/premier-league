import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ueableague/model/jsonconverter.dart';
import 'package:ueableague/mycustom-classes.dart';
class PremierLeagueNotifier extends ChangeNotifier{
// Theme management
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;


// Data from json file
  List<Premierleagueteams> _teams=[];
// Getters for my private values
  UnmodifiableListView<Premierleagueteams> get teams=>UnmodifiableListView(_teams);

// Methods starts here
// For setting the dark theme
  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }

// Fetching information from Json file
  Future fetchInformation()async{
     var response=await rootBundle.loadString("assets/league-infor.json");
    var data=json.decode(response);
    data['premierleagueteams'].forEach((team){
      _teams.add(Premierleagueteams.fromJson(team));
    });
    notifyListeners();

  }
}





