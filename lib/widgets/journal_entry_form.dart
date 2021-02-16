import 'package:flutter/material.dart';

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
}

class JournalEntryForm extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  final journalEntryFields = JournalEntryFields();
  var journalEntry = JournalEntry();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            SizedBox(height: 10),
            RaisedButton(
              onPressed: () {
                // if (formKey.currentState.validate()) {
                formKey.currentState.save();

                //Database.of(context).saveJournalEntry(journalEntryFields);
                //Navigator.of(context).pop();
                //journalEntry.title = 'keep it real';
                //  assert(journalEntry.title != 'ok');
                print(journalEntryFields.title);
                //  }
              },
              child: Text('Save Entry'),
            )
          ],
        ),
      ),
    );
  }
}
