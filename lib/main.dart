import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:journal/widgets/journal_scaffold.dart';
import 'screens/welcome.dart';
//import 'screens/alpha.dart';
//import 'screens/beta.dart';
//import 'widgets/journal_entry_form.dart';

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
  static final routes = {
    Welcome.routeName: (context) => Welcome(),
    //Alpha.routeName: (context) => Alpha(),
    //Beta.routeName: (context) => Beta(),
    //include welcome screen
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journal',
      theme: ThemeData.light(),
      routes: routes,
    );

    //home: JournalScaffold());
  }
}
