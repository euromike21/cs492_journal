import 'package:flutter/material.dart';
import 'package:intl/date_symbols.dart';
import 'package:intl/intl.dart';
import 'package:journal/widgets/dropdown_rating_form_field.dart';
import 'package:journal/screens/journal_entries.dart';
import 'package:journal/widgets/journal_entries_scaffold.dart';

class JournalEntryFields {
  String title;
  String body;
  DateTime dateTime;
  int rating;
  String toString() {
    return 'Title: $title, Body: $body, Time: $dateTime, Rating: $rating';
  }
}

class JournalEntry {
  int id;
  String title;
  String body;
  int rating;
  DateTime date;

  JournalEntry({
    this.id,
    this.title = '',
    this.body = '',
    this.rating = 0,
    this.date,
  });

  //genid method to genererate unique id
  //dateTime

  void dateGen() {
    //var now = new DateTime.now();
    //print('$now');
    print(new DateFormat.MMMMEEEEd().format(new DateTime.now()));
  }
}

// ignore: must_be_immutable
class JournalEntryForm extends StatelessWidget {
  final myController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final journalEntryFields = JournalEntryFields();
  var journalEntry = JournalEntry();

  static final EntriesRoute = {
    JournalEntries.routeName: (context) => JournalEntries(),
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: 'title', border: OutlineInputBorder()),
                onSaved: (value) {
                  //store value in some object
                  journalEntryFields.title = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a title';
                  } else {
                    return null;
                  }
                }),
            SizedBox(height: 20),
            TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: 'Body', border: OutlineInputBorder()),
                onSaved: (value) {
                  //store value in some object
                  journalEntryFields.body = value;
                },
                maxLines: 3,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a description';
                  } else {
                    return null;
                  }
                }),
            SizedBox(height: 20),
            DropdownRatingFormField(
              maxRating: 4,
              onSaved: (value) {
                //       //store value in some object
                //       int num = int.parse(value);
                journalEntryFields.rating = value;
              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'),
                ),
                entriesButton(
                    context, formKey, journalEntryFields, journalEntry),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget entriesButton(BuildContext context, GlobalKey<FormState> formKey,
    JournalEntryFields journalEntryFields, JournalEntry journalEntry) {
  return RaisedButton(
      onPressed: () {
        //TODO: Validate
        formKey.currentState.save();
        print(journalEntryFields.title);
        print(journalEntryFields.body);
        print(journalEntryFields.rating);

        journalEntry.dateGen();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => JournalEntriesScaffold()),
        );
      },
      child: Text(
          'Save Entry')); // This trailing comma makes auto-formatting nicer for build methods.
}
