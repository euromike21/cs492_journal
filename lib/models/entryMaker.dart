import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:journal/screens/journal_entries.dart';

class JEntry {
  final String title, body, date;
  final int id;
  JEntry(
      {this.title = "Unnamed Entry",
      this.body = "No Description",
      this.date = "No date",
      this.id = 0});
}

class EntryMaker {
  JEntry je1 = JEntry(
      title: 'Fried Rice',
      body:
          'Fried rice is a dish of cooked rice that has been stir-fried in a wok or a frying pan and is usually mixed with other ingredients such as eggs, vegetables, seafood, or meat. It is often eaten by itself or as an accompaniment to another dish. Fried rice is a popular component of East Asian, Southeast Asian and certain South Asian cuisines, as well as a staple national dish of Indonesia and Malaysia. As a homemade dish, fried rice is typically made with ingredients left over from other dishes, leading to countless variations. Fried rice first developed during the Sui Dynasty in China and as such all fried rice dishes can trace their origins to Chinese fried rice.[1]',
      date: 'Friday, February 11th, 2012');

  JEntry je2 = JEntry(
      title: 'Flatbread',
      body:
          'A flatbread is a bread made with flour, water, and salt, and then thoroughly rolled into flattened dough. Many flatbreads are unleavened, although some are leavened, such as pizza and pita bread.Flatbreads range from below one millimeter to a few centimeters thick so that they can be easily eaten without being sliced. They can be baked in an oven, fried in hot oil, grilled over hot coals, cooked on a hot pan, tava, comal, or metal griddle, and eaten fresh or packaged and frozen for later use.',
      date: 'Friday, February 11th, 2012');

  JEntry je3 = JEntry(
      title: 'Pizza',
      body:
          'Pizza (Italian: [ˈpittsa], Neapolitan: [ˈpittsə]) is a savory dish of Italian origin consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as anchovies, mushrooms, onions, olives, pineapple, meat, etc.), which is then baked at a high temperature, traditionally in a wood-fired oven.[1] A small pizza is sometimes called a pizzetta. A person who makes pizza is known as a pizzaiolo.',
      date: 'Friday, February 11th, 2012');

  List<JEntry> createList() {
    var items = List<JEntry>();
    items.add(je1);
    items.add(je2);
    items.add(je3);
    print('$items');
    return items;
  }
}
