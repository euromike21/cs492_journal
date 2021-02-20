import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:journal/db/mock_data.dart';
import 'package:journal/screens/welcome.dart';
import 'package:journal/models/journal.dart';
import 'package:journal/models/journal_entry.dart';

// class JEntry {
//   final String title, body;
//   JEntry({this.title = "Unnamed ENtry", this.body = "No Description"});
// }

class JournalEntries extends StatelessWidget {
  static const routeName = '/';
  //static const routeName = 'journal_entries';
  static const routeKey = 'journal_entries';
  //Function(JournalEntry) onTap;

  JournalEntry returnJEntry(JournalEntry selectedEntry) {
    print(selectedEntry.title);
    return selectedEntry;
  }

  var jList = Journal(mockEntryList).createList();

  @override
  Widget build(BuildContext context) {
    return Material(
      //body: ListView.builder(itemBuilder: (context, index) {
      child: ListView.builder(
          itemCount: jList.length,
          itemBuilder: (context, index) {
            //use these when possible
            final entry = jList[index];
            print('Creating item $index');
            return ListTile(
              leading: FlutterLogo(),
              trailing: Icon(Icons.more_horiz),
              title: Text(entry.title),
              subtitle: Text(entry.date),
              onTap: () => returnJEntry(entry),
              //TODO: update this with route to actual data
              //Navigator.of(context).pushNamed(routeKey);
            );
          }),
    );
  }
}
