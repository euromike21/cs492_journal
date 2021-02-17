import 'package:flutter/material.dart';
import 'package:journal/widgets/journal_scaffold.dart';
import 'beta.dart';

class Welcome extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          journalIcon(context),
          Text(
            'Journal',
          ),
          SizedBox(height: 10),
          journalButton(context)
        ],
      )),
    );
  }
}

Widget journalIcon(BuildContext context) {
  return Icon(
    Icons.auto_stories,
    size: 150.0,
  );
}

Widget journalButton(BuildContext context) {
  return FloatingActionButton(
    onPressed: () {
      //print('pressed');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => JournalScaffold()),
      );
    },
    child: Icon(Icons.add),
  ); // This trailing comma makes auto-formatting nicer for build methods.
}

void pushJournalScaffold(BuildContext context) {
  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Beta()));
  Navigator.of(context).pushNamed(JournalScaffold.routeName);
}
