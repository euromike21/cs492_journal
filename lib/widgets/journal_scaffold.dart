import 'package:flutter/material.dart';
import 'package:journal/widgets/journal_entry_form.dart';
import 'package:journal/screens/journal_entries.dart';

class JournalScaffold extends StatelessWidget {
  static const routeName = 'journalScaffold';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Journal'),
        ),
        endDrawer: Drawer(),
        body: JournalEntryForm());
  }
}
