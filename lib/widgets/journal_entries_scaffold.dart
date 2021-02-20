import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:journal/models/journal_entry.dart';
import 'package:journal/screens/journal_entries.dart';
import 'package:journal/widgets/journal_entry_form.dart';
import 'package:journal/screens/welcome.dart';
import 'package:journal/widgets/journal_scaffold.dart';

class JournalEntriesScaffold extends StatelessWidget {
  static const routeName = '/';
  //static const routeName = 'journalScaffold';
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
        body: LayoutBuilder(builder: layoutDecider),
        //body: JournalEntries(),
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

  Widget layoutDecider(BuildContext context, BoxConstraints constraints) =>
      constraints.maxWidth < 800 ? VerticalLayout() : HorizontalLayout();
}

class VerticalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: JournalEntries(),
    );
  }
}

class HorizontalLayout extends StatelessWidget {
  //String sampleTitle = 'Drank two Kombuchas';
  //String sampleDesc =
  //    ' Major disruptions to the Texas power grid left more than four million households without power this week, but by Thursday evening, only about 347,000 lacked electricity. Much of the statewide concern had turned to water woes.More than 800 public water systems serving 162 of the state’s 254 counties had been disrupted as of Thursday, affecting 13.1 million people, according to a spokeswoman for the Texas Commission on Environmental Quality.In Harris County, which includes Houston, the nation’s fourth-largest city, more than one million people have been affected by local water systems that have either issued notices to boil water so it is safe to drink or that cannot deliver water at all, said Brian Murray, a spokesman for the county emergency management agency.';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Expanded(child: Container(child: JournalEntries())),
      Expanded(
          child: Container(
        child: JournalEntry(),
      ))
    ]);
  }
}
