//I think this is the list of JournalEntry objects
import 'package:flutter/material.dart';
import 'package:journal/db/mock_data.dart';

class EntryDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600],

          // Define the default font family.
          fontFamily: 'Georgia',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline4: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
            bodyText1: TextStyle(fontSize: 10.0, fontFamily: 'Hind'),
          )),
      home: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              formatEntryTitle(context, je1.journalTitle),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              formatEntryDescription(context, je1.journalBody),
            ]),
          ],
        ),
      ),
    );
  }

  Widget formatEntryTitle(BuildContext context, String titleText) {
    return Flexible(
        child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Text(titleText,
            //Text('Drank two Kombuchas',
            textAlign: TextAlign.left,
            overflow: TextOverflow.fade,
            style: Theme.of(context).textTheme.headline4),
      ),
    ));
  }

  Widget formatEntryDescription(BuildContext context, String descText) {
    return Flexible(
        child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          descText,
          //'Major disruptions to the Texas power grid left more than four million households without power this week, but by Thursday evening, only about 347,000 lacked electricity. Much of the statewide concern had turned to water woes.More than 800 public water systems serving 162 of the state’s 254 counties had been disrupted as of Thursday, affecting 13.1 million people, according to a spokeswoman for the Texas Commission on Environmental Quality.In Harris County, which includes Houston, the nation’s fourth-largest city, more than one million people have been affected by local water systems that have either issued notices to boil water so it is safe to drink or that cannot deliver water at all, said Brian Murray, a spokesman for the county emergency management agency.',
          textAlign: TextAlign.left,
          overflow: TextOverflow.fade,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    ));
  }
}
