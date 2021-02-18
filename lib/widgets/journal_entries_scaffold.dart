import 'package:flutter/material.dart';
import 'package:journal/screens/journal_entries.dart';
import 'package:journal/widgets/journal_entry_form.dart';
import 'package:journal/screens/welcome.dart';
import 'package:journal/widgets/journal_scaffold.dart';

class JournalEntriesScaffold extends StatelessWidget {
  static const routeName = 'journalScaffold';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Journal'),
          // actions: <Widget>[
          //   IconButton(icon: Icon(Icons.brightness_6), onPressed: null)
          // ],
        ),
        endDrawer: Drawer(),
        body: JournalEntries(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JournalScaffold()),
            );
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        )); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
