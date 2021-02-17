import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/old_alpha.dart';
import 'screens/beta.dart';

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
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journal',
      theme: ThemeData.dark(),
      routes: routes,
    );
  }
}
