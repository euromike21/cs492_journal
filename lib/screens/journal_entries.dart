import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:journal/screens/welcome.dart';

class JournalEntries extends StatelessWidget {
  static const routeName = '/';
  //static const routeName = 'journal_entries';
  static const routeKey = 'journal_entries';

  final items = List<Map>.generate(10000, (i) {
    return {
      'title': 'Journal Entry$i',
      'subtitle': 'Subtitle text for $i',
    };
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      //body: ListView.builder(itemBuilder: (context, index) {
      child: ListView.builder(itemBuilder: (context, index) {
        //use these when possible
        print('Creating item $index');
        return ListTile(
          leading: FlutterLogo(),
          trailing: Icon(Icons.more_horiz),
          title: Text('Journal Entry ${items[index]['title']}'),
          subtitle: Text('Example subtitle ${items[index]['subtitle']}'),
          onTap: () {
            //TODO: update this with route to actual data
            Navigator.of(context).pushNamed(routeKey);
          },
        );
      }),

      // ListView(
      //   padding: const EdgeInsets.all(8),
      //   children: <Widget>[
      //     //use these when possible
      //     ListTile(
      //       leading: FlutterLogo(),
      //       trailing: Icon(Icons.more_horiz),
      //       title: Text('Journal Entry N'),
      //       subtitle: Text('Example subtitle'),
      //     ),
      //   ],
      // ),
    );
  }
}
