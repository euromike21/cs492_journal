import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:journal/widgets/journal_entries_scaffold.dart';
//import 'package:journal/widgets/journal_scaffold.dart';
import 'screens/welcome.dart';
import 'screens/journal_entries.dart';
//import 'screens/alpha.dart';
//import 'screens/beta.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(App());
  });
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  static final welcomeRoute = {
    Welcome.routeName: (context) => Welcome(),
  };

  static final listRoute = {
    //JournalEntries.routeName: (context) => JournalEntries(),
    JournalEntries.routeName: (context) => JournalEntries(),
  };

  static final listScaffoldRoute = {
    //JournalEntries.routeName: (context) => JournalEntries(),
    JournalEntriesScaffold.routeName: (context) => JournalEntriesScaffold(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journal',
      theme: ThemeData.light(),
      //if list length is > 0 then load welcomroute

      //routes: welcomeRoute,

      //else load journalentries route

      routes: listScaffoldRoute,
    );

    //home: JournalScaffold());
  }
}
