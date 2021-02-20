//I think this is the list of JournalEntry objects
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class JournalEntry {
  int id;
  String title;
  String body;
  int rating;
  String date;

  JournalEntry({
    this.id,
    this.title = '',
    this.body = '',
    this.rating = 0,
    this.date = '',
  });

  String get journalTitle {
    return title;
  }

  String get journalBody {
    return body;
  }

  String get journalDate {
    return date;
  }

  String dateGen() {
    //var now = new DateTime.now();
    //print('$now');
    print(new DateFormat.MMMMEEEEd().format(new DateTime.now()));
    return (new DateFormat.MMMMEEEEd().format(new DateTime.now()));
  }
}
