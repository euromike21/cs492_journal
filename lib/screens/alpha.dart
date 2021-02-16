import 'package:flutter/material.dart';
import 'beta.dart';

class Alpha extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [textPlaceholder(context), alphaButton(context)],
    ));
  }
}

Widget textPlaceholder(BuildContext context) {
  return Text('Alpha', style: Theme.of(context).textTheme.headline1);
}

void pushBeta(BuildContext context) {
  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Beta()));
  Navigator.of(context).pushNamed(Beta.routeName);
}

Widget alphaButton(BuildContext context) {
  return RaisedButton(
    onPressed: () {
      //this is wha'ts used in the navigation cookbook
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Beta()),
      );
    },
    child: const Text('Beta', style: TextStyle(fontSize: 20)),
  );
}
