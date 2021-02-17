import 'package:flutter/material.dart';
import 'package:journal/widgets/journal_entry_form.dart';

class JournalScaffold extends StatelessWidget {
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
        body: JournalEntryForm());
    // return Center(
    //     child: Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [Row(), Row()],
    // ));
  }
}
