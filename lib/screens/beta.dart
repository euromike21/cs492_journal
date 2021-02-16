import 'package:flutter/material.dart';

class Beta extends StatelessWidget {
  static const routeName = 'beta';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textPlaceholder(context),
        backButton(context),
      ],
    ));
  }
}

Widget textPlaceholder(BuildContext context) {
  return Text('Beta', style: Theme.of(context).textTheme.headline1);
}

void popBack(BuildContext context) {
  Navigator.of(context).pop();
}

Widget backButton(BuildContext context) {
  return RaisedButton(
      child: Text('Back', style: Theme.of(context).textTheme.headline2),
      onPressed: () => Navigator.pop(context));
}
