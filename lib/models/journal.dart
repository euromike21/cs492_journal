import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:journal/screens/journal_entries.dart';
import 'journal_entry.dart';
import 'package:journal/db/mock_data.dart';

class Journal {
//This method creates list from database
  bool listEmpty = true;
  List<JournalEntry> entryList = mockEntryList;
  final int listLength = 0;

  Journal(List<JournalEntry> eList) {
    this.entryList = eList;
  }

  List<JournalEntry> createList() {
    var items = <JournalEntry>[je1, je2, je3];
    return items;
  }

  bool isListEmpty() {
    if (listLength == 0) {
      return true;
    } else {
      return false;
    }
  }

  set listLength(int listLen) => entryList.length;
  int get listLen => listLength;
}
