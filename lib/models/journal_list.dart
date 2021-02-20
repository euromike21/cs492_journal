//I think this is class that constructs a journal entry
import 'package:flutter/material.dart';
import 'package:journal/models/journal_entry.dart';

//---------------for reference - this can also hold the mock data

// import 'dart:io';
// import 'dart:async';
// import 'dart:convert';
// import 'package:dart_proj/dart_space_adventure.dart';

// const systemName = 'Solar System';

// var jsonPlanetData;
// Map<String, dynamic> jsonObj;

// void main(List<String> arguments) {
//   //convert file data into string
//   jsonPlanetData = convertFile().then((jsonPlanetData) {
//     //parse a string into a JSON Object using jsonDecode
//     jsonObj = jsonDecode(jsonPlanetData);
//     //take the planet array from that and put into a var
//     var planetArray = jsonObj['planets'];
//     //create empty list of Planet Objects
//     var planets = List<Planet>();
//     //convert each element in the array to an object
//     planetArray.forEach((entity) {
//       var planet = Planet.fromJson(entity);
//       planets.add(planet);
//     });

//     //create a space adventure with new planet list
//     SpaceAdventure(
//             planetarySystem:
//                 PlanetarySystem(name: "Solar System", planets: planets))
//         .start();
//   });
// }

//*************************************** */
//  convert external Datafile to string
//
//*************************************** */

// Future<String> convertFile() async {
//   var file = File('planetarySystem.json');
//   if (await file.exists()) {
//     // Read file
//     jsonPlanetData = await file.readAsString();
//   }
//   return jsonPlanetData;
// }

///-------------------------------------------------
