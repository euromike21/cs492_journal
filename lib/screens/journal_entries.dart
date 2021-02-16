import 'package:flutter/material.dart';
import '../widgets/journal_scaffold.dart';

class JournalEntriesScreen extends StatelessWidget {
  static const routeKey = 'journal_entries';
  final items = List<Map>.generate(1000, (index) {
    return {
      'title': 'journal entry $index',
      'subtitle': 'Subtitle text  for $index',
    };
  });

  @override
  Widget build(BuildContext context) {
    // return JournalScaffold(
    //     title: 'Journal Entries',
    //     child: ListView.builder(itemBuilder: context,index){
    //     return ListTile(
    //       leading: FlutterLogo(),
    //       trailing: Icons(Icons.more_horiz),
    //       title: Text('Journal Entry ${items[index][index]}'),
    //       subtitle: Text('Example ${items[index]['subtitle']}')
    //    );
    //     })
    //     );
  }
}
