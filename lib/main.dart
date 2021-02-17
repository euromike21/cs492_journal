import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/alpha.dart';
import 'screens/beta.dart';
import 'widgets/journal_entry_form.dart';

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
    Alpha.routeName: (context) => Alpha(),
    Beta.routeName: (context) => Beta(),
    //include welcome screen
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Journal',
        theme: ThemeData.dark(),
        //routes: routes,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Adaptive Layouts'),
              // actions: <Widget>[
              //   IconButton(icon: Icon(Icons.brightness_6), onPressed: null)
              // ],
            ),
            endDrawer: Drawer(
              child: ListView(),
            ),
            body: JournalEntryForm()));
  }
}
