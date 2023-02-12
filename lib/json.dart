// import 'dart:convert';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/services.dart' show rootBundle;

// class JsonFileParser {
//   static Future<List<dynamic>> parseJsonFromAssets(String assetsFilePath) async {
//     final jsonString = await rootBundle.loadString(assetsFilePath);
//     final jsonMap = json.decode(jsonString);
//     return List<dynamic>.from(jsonMap);
//   }
// }

// class JsonDataDisplay extends StatelessWidget {
//   final String assetsFilePath;

//   JsonDataDisplay({@required this.assetsFilePath});

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: JsonFileParser.parseJsonFromAssets(assetsFilePath),
//       builder: (BuildContext context, AsyncSnapshot snapshot) {
//         if (snapshot.hasData) {
//           return ListView.builder(
//             itemCount: snapshot.data.length,
//             itemBuilder: (BuildContext context, int index) {
//               final item = snapshot.data[index];
//               return ListTile(
//                 title: Text(item['title']),
//                 subtitle: Text(item['description']),
//               );
//             },
//           );
//         } else {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       },
//     );
//   }
// }

// import 'dart:convert';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/services.dart' show rootBundle;

// class JsonData {
//   final String title;
//   final String description;

//   JsonData({this.title, this.description});

//   factory JsonData.fromJson(Map<String, dynamic> json) {
//     return JsonData(
//       title: json['title'],
//       description: json['description'],
//     );
//   }
// }

// class JsonDataParser {
//   static Future<List<JsonData>> parseJsonFromAssets(String assetsFilePath) async {
//     final jsonString = await rootBundle.loadString(assetsFilePath);
//     final jsonMap = json.decode(jsonString);
//     return (jsonMap as List).map((json) => JsonData.fromJson(json)).toList();
//   }
// }

// class JsonDataDisplay extends StatelessWidget {
//   final String assetsFilePath;

//   JsonDataDisplay({@required this.assetsFilePath});

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: JsonDataParser.parseJsonFromAssets(assetsFilePath),
//       builder: (BuildContext context, AsyncSnapshot snapshot) {
//         if (snapshot.hasData) {
//           return ListView.builder(
//             itemCount: snapshot.data.length,
//             itemBuilder: (BuildContext context, int index) {
//               final item = snapshot.data[index];
//               return ListTile(
//                 title: Text(item.title),
//                 subtitle: Text(item.description),
//               );
//             },
//           );
//         } else {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       },
//     );
//   }
// }

